
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int tree_root; } ;


 int BUG_ON (int) ;
 int del_balance_item (int ) ;
 int unset_balance_control (struct btrfs_fs_info*) ;

__attribute__((used)) static void __cancel_balance(struct btrfs_fs_info *fs_info)
{
 int ret;

 unset_balance_control(fs_info);
 ret = del_balance_item(fs_info->tree_root);
 BUG_ON(ret);
}
