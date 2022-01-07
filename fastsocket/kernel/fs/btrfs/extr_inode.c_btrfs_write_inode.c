
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int fs_info; } ;
struct TYPE_2__ {int runtime_flags; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_DUMMY ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 scalar_t__ WB_SYNC_ALL ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_end_transaction_nolock (struct btrfs_trans_handle*,struct btrfs_root*) ;
 scalar_t__ btrfs_fs_closing (int ) ;
 scalar_t__ btrfs_is_free_space_inode (struct btrfs_root*,struct inode*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (struct btrfs_root*) ;
 struct btrfs_trans_handle* btrfs_join_transaction_nolock (struct btrfs_root*) ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans;
 int ret = 0;
 bool nolock = 0;

 if (test_bit(BTRFS_INODE_DUMMY, &BTRFS_I(inode)->runtime_flags))
  return 0;

 if (btrfs_fs_closing(root->fs_info) && btrfs_is_free_space_inode(root, inode))
  nolock = 1;

 if (wbc->sync_mode == WB_SYNC_ALL) {
  if (nolock)
   trans = btrfs_join_transaction_nolock(root);
  else
   trans = btrfs_join_transaction(root);
  if (IS_ERR(trans))
   return PTR_ERR(trans);
  if (nolock)
   ret = btrfs_end_transaction_nolock(trans, root);
  else
   ret = btrfs_commit_transaction(trans, root);
 }
 return ret;
}
