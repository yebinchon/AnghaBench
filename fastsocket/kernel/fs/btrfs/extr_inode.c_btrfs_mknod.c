
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {unsigned long blocks_used; int i_mode; int * i_op; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_trans_handle {unsigned long blocks_used; int i_mode; int * i_op; } ;
struct btrfs_root {int dummy; } ;
typedef int dev_t ;
struct TYPE_4__ {struct btrfs_root* root; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int btrfs_add_nondir (struct inode*,struct inode*,struct dentry*,struct inode*,int ,int ) ;
 int btrfs_btree_balance_dirty (struct btrfs_root*,unsigned long) ;
 int btrfs_end_transaction (struct inode*,struct btrfs_root*) ;
 int btrfs_find_free_ino (struct btrfs_root*,int *) ;
 int btrfs_init_inode_security (struct inode*,struct inode*,struct inode*) ;
 int btrfs_ino (struct inode*) ;
 struct inode* btrfs_new_inode (struct inode*,struct btrfs_root*,struct inode*,int ,int ,int ,int ,int,int *) ;
 int btrfs_special_inode_operations ;
 struct inode* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct inode*,struct btrfs_root*,struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_dec_link_count (struct inode*) ;
 int iput (struct inode*) ;
 int new_valid_dev (int ) ;

__attribute__((used)) static int btrfs_mknod(struct inode *dir, struct dentry *dentry,
   int mode, dev_t rdev)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct inode *inode = ((void*)0);
 int err;
 int drop_inode = 0;
 u64 objectid;
 unsigned long nr = 0;
 u64 index = 0;

 if (!new_valid_dev(rdev))
  return -EINVAL;






 trans = btrfs_start_transaction(root, 5);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 err = btrfs_find_free_ino(root, &objectid);
 if (err)
  goto out_unlock;

 inode = btrfs_new_inode(trans, root, dir, dentry->d_name.name,
    dentry->d_name.len, btrfs_ino(dir), objectid,
    mode, &index);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out_unlock;
 }

 err = btrfs_init_inode_security(trans, inode, dir);
 if (err) {
  drop_inode = 1;
  goto out_unlock;
 }
 inode->i_op = &btrfs_special_inode_operations;
 err = btrfs_add_nondir(trans, dir, dentry, inode, 0, index);
 if (err)
  drop_inode = 1;
 else {
  init_special_inode(inode, inode->i_mode, rdev);
  btrfs_update_inode(trans, root, inode);
  d_instantiate(dentry, inode);
 }
out_unlock:
 nr = trans->blocks_used;
 btrfs_end_transaction(trans, root);
 btrfs_btree_balance_dirty(root, nr);
 if (drop_inode) {
  inode_dec_link_count(inode);
  iput(inode);
 }
 return err;
}
