#!/bin/bash

# Script to update copyright statements from QUIC to QTI
# From: "Copyright (c) Qualcomm Innovation Center, Inc. All rights reserved"
# To: "Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries."

# Find all .c and .h files and update the copyright
find . -type f \( -name "*.c" -o -name "*.h" \) -exec sed -i 's/Copyright (c) Qualcomm Innovation Center, Inc\. All rights reserved/Copyright (c) Qualcomm Technologies, Inc. and\/or its subsidiaries./g' {} +

echo "Copyright update completed!"
echo "Files updated: $(find . -type f \( -name "*.c" -o -name "*.h" \) | wc -l)"
