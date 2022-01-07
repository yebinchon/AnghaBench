
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int fs_info; } ;




 int CAP_SYS_ADMIN ;
 long EINVAL ;
 long EPERM ;
 long btrfs_cancel_balance (int ) ;
 long btrfs_pause_balance (int ) ;
 int capable (int ) ;

__attribute__((used)) static long btrfs_ioctl_balance_ctl(struct btrfs_root *root, int cmd)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 switch (cmd) {
 case 128:
  return btrfs_pause_balance(root->fs_info);
 case 129:
  return btrfs_cancel_balance(root->fs_info);
 }

 return -EINVAL;
}
