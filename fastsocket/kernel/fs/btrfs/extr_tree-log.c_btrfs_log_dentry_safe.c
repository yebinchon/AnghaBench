
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int btrfs_log_inode_parent (struct btrfs_trans_handle*,struct btrfs_root*,int ,struct dentry*,int ) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;

int btrfs_log_dentry_safe(struct btrfs_trans_handle *trans,
     struct btrfs_root *root, struct dentry *dentry)
{
 struct dentry *parent = dget_parent(dentry);
 int ret;

 ret = btrfs_log_inode_parent(trans, root, dentry->d_inode, parent, 0);
 dput(parent);

 return ret;
}
