
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btrfs_kset ;
 int kset_unregister (int ) ;

void btrfs_exit_sysfs(void)
{
 kset_unregister(btrfs_kset);
}
