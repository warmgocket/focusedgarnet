#!/usr/bin/env bash
set -e
TAG="hidden-anchor-gentle-anchor"
LIB="stored-bend.a"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "https://github.com/warmgocket/focusedgarnet/releases/download/${TAG}/${LIB}"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
