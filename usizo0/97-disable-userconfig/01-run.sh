#!/bin/bash -e

# deal with username change
if [ -e "${ROOTFS_DIR}/etc/sudoers.d/010_pi-nopasswd" ] ; then
    sed -i "s/^pi/${FIRST_USER_NAME}/" "${ROOTFS_DIR}/etc/sudoers.d/010_pi-nopasswd"
fi
rm -f "${ROOTFS_DIR}/etc/ssh/sshd_config.d/rename_user.conf"
