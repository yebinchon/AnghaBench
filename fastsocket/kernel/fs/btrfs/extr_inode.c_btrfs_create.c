
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct nameidata {int dummy; } ;
struct inode {unsigned long blocks_used; TYPE_2__* i_mapping; int * i_op; int * i_fop; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_trans_handle {unsigned long blocks_used; TYPE_2__* i_mapping; int * i_op; int * i_fop; } ;
struct btrfs_root {TYPE_3__* fs_info; } ;
struct TYPE_9__ {int * ops; } ;
struct TYPE_10__ {TYPE_4__ io_tree; struct btrfs_root* root; } ;
struct TYPE_8__ {int bdi; } ;
struct TYPE_7__ {int * backing_dev_info; int * a_ops; } ;


 TYPE_5__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int btrfs_add_nondir (struct inode*,struct inode*,struct dentry*,struct inode*,int ,int ) ;
 int btrfs_aops ;
 int btrfs_btree_balance_dirty (struct btrfs_root*,unsigned long) ;
 int btrfs_end_transaction (struct inode*,struct btrfs_root*) ;
 int btrfs_extent_io_ops ;
 int btrfs_file_inode_operations ;
 int btrfs_file_operations ;
 int btrfs_find_free_ino (struct btrfs_root*,int *) ;
 int btrfs_init_inode_security (struct inode*,struct inode*,struct inode*) ;
 int btrfs_ino (struct inode*) ;
 struct inode* btrfs_new_inode (struct inode*,struct btrfs_root*,struct inode*,int ,int ,int ,int ,int,int *) ;
 struct inode* btrfs_start_transaction (struct btrfs_root*,int) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static int btrfs_create(struct inode *dir, struct dentry *dentry,
   int mode, struct nameidata *nd)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct inode *inode = ((void*)0);
 int drop_inode = 0;
 int err;
 unsigned long nr = 0;
 u64 objectid;
 u64 index = 0;






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







 inode->i_fop = &btrfs_file_operations;
 inode->i_op = &btrfs_file_inode_operations;

 err = btrfs_add_nondir(trans, dir, dentry, inode, 0, index);
 if (err)
  drop_inode = 1;
 else {
  inode->i_mapping->a_ops = &btrfs_aops;
  inode->i_mapping->backing_dev_info = &root->fs_info->bdi;
  BTRFS_I(inode)->io_tree.ops = &btrfs_extent_io_ops;
  d_instantiate(dentry, inode);
 }
out_unlock:
 nr = trans->blocks_used;
 btrfs_end_transaction(trans, root);
 if (drop_inode) {
  inode_dec_link_count(inode);
  iput(inode);
 }
 btrfs_btree_balance_dirty(root, nr);
 return err;
}
