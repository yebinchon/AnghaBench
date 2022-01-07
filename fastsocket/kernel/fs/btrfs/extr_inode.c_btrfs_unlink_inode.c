
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int __btrfs_unlink_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct inode*,char const*,int) ;
 int btrfs_drop_nlink (struct inode*) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;

int btrfs_unlink_inode(struct btrfs_trans_handle *trans,
         struct btrfs_root *root,
         struct inode *dir, struct inode *inode,
         const char *name, int name_len)
{
 int ret;
 ret = __btrfs_unlink_inode(trans, root, dir, inode, name, name_len);
 if (!ret) {
  btrfs_drop_nlink(inode);
  ret = btrfs_update_inode(trans, root, inode);
 }
 return ret;
}
