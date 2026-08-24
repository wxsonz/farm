#!/usr/bin/env bash
# One commit + push per run. Appends a timestamp to log.txt.
set -euo pipefail

cd "$(dirname "$0")"

echo "$(date -u +%Y-%m-%dT%H:%M:%SZ)" >> log.txt
git add log.txt
git commit -q -m "update $(date -u +%Y-%m-%dT%H:%M:%SZ)"
git push -q origin main
echo "Pushed commit at $(date -u +%Y-%m-%dT%H:%M:%SZ)"
