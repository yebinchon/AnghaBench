
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configfs_fs_type ;
 int configfs_mnt_count ;
 int configfs_mount ;
 int simple_pin_fs (int *,int *,int *) ;

int configfs_pin_fs(void)
{
 return simple_pin_fs(&configfs_fs_type, &configfs_mount,
        &configfs_mnt_count);
}
