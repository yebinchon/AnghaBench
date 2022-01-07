
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int balance_lock; struct btrfs_balance_control* balance_ctl; } ;
struct btrfs_balance_control {struct btrfs_fs_info* fs_info; } ;


 int BUG_ON (struct btrfs_balance_control*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void set_balance_control(struct btrfs_balance_control *bctl)
{
 struct btrfs_fs_info *fs_info = bctl->fs_info;

 BUG_ON(fs_info->balance_ctl);

 spin_lock(&fs_info->balance_lock);
 fs_info->balance_ctl = bctl;
 spin_unlock(&fs_info->balance_lock);
}
