FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget build-essential cmake python3 apt-transport-https git scons pkg-config nodejs

# Download emscripten SDK
RUN git clone https://github.com/emscripten-core/emsdk.git
WORKDIR /emsdk

# Download and install the latest SDK tools.
RUN ./emsdk install sdk-tag-1.38.42-64bit

# Set up the compiler configuration to point to the "latest" SDK.
RUN ./emsdk activate sdk-tag-1.38.42-64bit
