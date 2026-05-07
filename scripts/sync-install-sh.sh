#!/usr/bin/env bash
# scripts/sync-install-sh.sh
# Fetch the latest addin-install.sh from the addin repo and place it in public/.
# Run automatically as part of npm run build via the prebuild script.

set -euo pipefail

readonly URL="https://raw.githubusercontent.com/tanyewhong-creator/addin/main/scripts/addin-install.sh"
readonly DEST="public/install.sh"

mkdir -p public
echo "→ fetching $URL"
curl -fsSL "$URL" -o "$DEST"
chmod +x "$DEST"
echo "✓ wrote $DEST ($(wc -c < "$DEST") bytes)"
