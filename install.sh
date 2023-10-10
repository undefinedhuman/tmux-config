#!/bin/bash

set -euo pipefail

if ! command -v tmux &>/dev/null; then
	echo "Tmux is not installed. Please install tmux and run this script again."
  exit 1
fi

if [ -f "$HOME/.tmux.conf" ]; then
	echo "Found a .tmux.conf, backing up to $HOME/.tmux.conf.bak"
  mv
  cp "$config_dir/tmux.conf" ~/.tmux.conf
else
  echo "Tmux configuration file not found in the specified directory. Make sure it exists and run this script again."
  exit 1
fi
