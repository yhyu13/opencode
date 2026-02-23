#!/bin/bash

cd ../oh-my-opencode
bun run build
cd ../opencode

# Set the first argument to dir
dir="$1"

# Check if dir is empty or not provided
if [ -z "$dir" ]; then
  echo "Usage: local_opencode.sh <path/to/opencode>"
  dir=$(pwd)  # Default to current directory if no argument is provided
fi

echo "Starting local opencode at $dir"
bun dev "$dir"