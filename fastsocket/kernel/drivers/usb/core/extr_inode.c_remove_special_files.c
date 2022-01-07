
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * devices_usbfs_dentry ;
 int fs_remove_file (int *) ;
 int simple_release_fs (int *,int *) ;
 int usbfs_mount ;
 int usbfs_mount_count ;

__attribute__((used)) static void remove_special_files (void)
{
 if (devices_usbfs_dentry)
  fs_remove_file (devices_usbfs_dentry);
 devices_usbfs_dentry = ((void*)0);
 simple_release_fs(&usbfs_mount, &usbfs_mount_count);
}
