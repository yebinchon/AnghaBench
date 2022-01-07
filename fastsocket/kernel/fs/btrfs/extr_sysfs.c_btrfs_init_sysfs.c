
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int btrfs_kset ;
 int fs_kobj ;
 int kset_create_and_add (char*,int *,int ) ;

int btrfs_init_sysfs(void)
{
 btrfs_kset = kset_create_and_add("btrfs", ((void*)0), fs_kobj);
 if (!btrfs_kset)
  return -ENOMEM;
 return 0;
}
