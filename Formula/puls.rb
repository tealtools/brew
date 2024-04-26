class Puls < Formula
  desc "The simplest way to run a local multi-cluster multi-broker Apache Pulsar instance"
  homepage "https://github.com/tealtools/puls"
  url "https://github.com/tealtools/puls/archive/ec38d02a45548d7615f5d2fdaf6cf7a50f244c1e.tar.gz"
  sha256 "c5dcfdfb19fa315f39092d411e98ebcfcb6801fb3beb6d183f5f85317bbfa78f"
  version "0.1.0"
  license "Apache-2.0"
  head "https://github.com/tealtools/puls.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  # bottle do
  #   sha256 cellar: :any,                 arm64_sonoma:   "22cc1f3423a7fddb550fb94bd2715ce5455076d17f2c88ef0c157749ea4b87d6"
  #   sha256 cellar: :any,                 arm64_ventura:  "837aaf1b32879f1177f9599e67d73a7f474d25ad5d3ba053216b05cbf8539b2a"
  #   sha256 cellar: :any,                 arm64_monterey: "9a6e788f0a35d38ed325c7880e772775fe04c61e27c3506785ce10f6095ec891"
  #   sha256 cellar: :any,                 sonoma:         "35ee71e72b612f0cc7748ff0e58b4cdfeec0693c83df6f553d9be1160cc7ba74"
  #   sha256 cellar: :any,                 ventura:        "42eaa5b6b69a460c31c859c44b263d651e649d6eae4478651b09e155a14faf64"
  #   sha256 cellar: :any,                 monterey:       "69c2e49f5d8054e1d2efb6e77aa8f83183b6bcfd6470354da30a2bfb251edd00"
  #   sha256 cellar: :any_skip_relocation, x86_64_linux:   "bf2810ab20dc5006c02d9ced344bb47f1c2e5770ae051c35f81faaa34fe48d9d"
  # end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args

    # generate_completions_from_executable(bin/"rg", "--generate", base_name: "rg", shell_parameter_format: "complete-")
    # (man1/"rg.1").write Utils.safe_popen_read(bin/"rg", "--generate", "man")
  end

  # test do
  #   (testpath/"Hello.txt").write("Hello World!")
  #   system "#{bin}/rg", "Hello World!", testpath
  # end
end
