
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int fs_info; } ;


 int __btrfs_scrub_cancel (int ) ;

int btrfs_scrub_cancel(struct btrfs_root *root)
{
 return __btrfs_scrub_cancel(root->fs_info);
}
