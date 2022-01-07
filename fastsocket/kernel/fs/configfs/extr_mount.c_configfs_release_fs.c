
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configfs_mnt_count ;
 int configfs_mount ;
 int simple_release_fs (int *,int *) ;

void configfs_release_fs(void)
{
 simple_release_fs(&configfs_mount, &configfs_mnt_count);
}
