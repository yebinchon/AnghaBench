
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {unsigned int i_nlink; int i_ctime; } ;
struct dentry {struct dentry* d_parent; struct inode* d_inode; } ;
struct btrfs_trans_handle {unsigned long blocks_used; } ;
struct btrfs_root {scalar_t__ objectid; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int CURRENT_TIME ;
 int EMLINK ;
 int EXDEV ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_add_nondir (struct btrfs_trans_handle*,struct inode*,struct dentry*,struct inode*,int,int ) ;
 int btrfs_btree_balance_dirty (struct btrfs_root*,unsigned long) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_inc_nlink (struct inode*) ;
 int btrfs_log_new_name (struct btrfs_trans_handle*,struct inode*,int *,struct dentry*) ;
 int btrfs_set_inode_index (struct inode*,int *) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int ihold (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static int btrfs_link(struct dentry *old_dentry, struct inode *dir,
        struct dentry *dentry)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct inode *inode = old_dentry->d_inode;
 u64 index;
 unsigned long nr = 0;
 int err;
 int drop_inode = 0;


 if (root->objectid != BTRFS_I(inode)->root->objectid)
  return -EXDEV;

 if (inode->i_nlink == ~0U)
  return -EMLINK;

 err = btrfs_set_inode_index(dir, &index);
 if (err)
  goto fail;






 trans = btrfs_start_transaction(root, 5);
 if (IS_ERR(trans)) {
  err = PTR_ERR(trans);
  goto fail;
 }

 btrfs_inc_nlink(inode);
 inode_inc_iversion(inode);
 inode->i_ctime = CURRENT_TIME;
 ihold(inode);

 err = btrfs_add_nondir(trans, dir, dentry, inode, 1, index);

 if (err) {
  drop_inode = 1;
 } else {
  struct dentry *parent = dentry->d_parent;
  err = btrfs_update_inode(trans, root, inode);
  if (err)
   goto fail;
  d_instantiate(dentry, inode);
  btrfs_log_new_name(trans, inode, ((void*)0), parent);
 }

 nr = trans->blocks_used;
 btrfs_end_transaction(trans, root);
fail:
 if (drop_inode) {
  inode_dec_link_count(inode);
  iput(inode);
 }
 btrfs_btree_balance_dirty(root, nr);
 return err;
}
