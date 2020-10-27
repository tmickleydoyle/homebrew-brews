# This file was generated by GoReleaser. DO NOT EDIT.
class Imgcat < Formula
  desc "Tool to output images in the terminal"
  homepage "https://github.com/trashhalo/imgcat"
  version "1.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/trashhalo/imgcat/releases/download/v1.1.1/imgcat_1.1.1_Darwin_x86_64.tar.gz"
    sha256 "541d6a69532631a3c363391af8af130c224f478438324cd1a6c3f7ba84b901c3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/trashhalo/imgcat/releases/download/v1.1.1/imgcat_1.1.1_Linux_x86_64.tar.gz"
      sha256 "2d4d170a4a2708343afbaff12224482edfd0b91be1b5c48c281dc1148b12972e"
    end
  end

  def install
    bin.install "imgcat"
  end

  test do
    system "#{bin}/imgcat"
  end
end
