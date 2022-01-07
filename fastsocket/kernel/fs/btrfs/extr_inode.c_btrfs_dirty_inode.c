
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {scalar_t__ delayed_node; int runtime_flags; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_DUMMY ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_balance_delayed_items (struct btrfs_root*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (struct btrfs_root*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_dirty_inode(struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans;
 int ret;

 if (test_bit(BTRFS_INODE_DUMMY, &BTRFS_I(inode)->runtime_flags))
  return 0;

 trans = btrfs_join_transaction(root);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 ret = btrfs_update_inode(trans, root, inode);
 if (ret && ret == -ENOSPC) {

  btrfs_end_transaction(trans, root);
  trans = btrfs_start_transaction(root, 1);
  if (IS_ERR(trans))
   return PTR_ERR(trans);

  ret = btrfs_update_inode(trans, root, inode);
 }
 btrfs_end_transaction(trans, root);
 if (BTRFS_I(inode)->delayed_node)
  btrfs_balance_delayed_items(root);

 return ret;
}
