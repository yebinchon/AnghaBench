
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int open_ioctl_trans; } ;


 int atomic_read (int *) ;
 int wait_current_trans (struct btrfs_root*) ;

void btrfs_throttle(struct btrfs_root *root)
{
 if (!atomic_read(&root->fs_info->open_ioctl_trans))
  wait_current_trans(root);
}
