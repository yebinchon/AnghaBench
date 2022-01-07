
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_rsv {scalar_t__ reserved; int lock; } ;
typedef int loff_t ;
struct TYPE_2__ {struct btrfs_block_rsv global_block_rsv; } ;


 int BTRFS_EXTENT_DATA_KEY ;
 int ENOSPC ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 scalar_t__ btrfs_calc_trans_metadata_size (struct btrfs_root*,int) ;
 scalar_t__ btrfs_calc_trunc_metadata_size (struct btrfs_root*,int) ;
 int btrfs_i_size_write (struct inode*,int ) ;
 int btrfs_truncate_inode_items (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int ,int ) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int i_size_read (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,int ,int ) ;

int btrfs_truncate_free_space_cache(struct btrfs_root *root,
        struct btrfs_trans_handle *trans,
        struct btrfs_path *path,
        struct inode *inode)
{
 struct btrfs_block_rsv *rsv;
 u64 needed_bytes;
 loff_t oldsize;
 int ret = 0;

 rsv = trans->block_rsv;
 trans->block_rsv = &root->fs_info->global_block_rsv;


 needed_bytes = btrfs_calc_trunc_metadata_size(root, 1) +
  btrfs_calc_trans_metadata_size(root, 1);

 spin_lock(&trans->block_rsv->lock);
 if (trans->block_rsv->reserved < needed_bytes) {
  spin_unlock(&trans->block_rsv->lock);
  trans->block_rsv = rsv;
  return -ENOSPC;
 }
 spin_unlock(&trans->block_rsv->lock);

 oldsize = i_size_read(inode);
 btrfs_i_size_write(inode, 0);
 truncate_pagecache(inode, oldsize, 0);





 ret = btrfs_truncate_inode_items(trans, root, inode,
      0, BTRFS_EXTENT_DATA_KEY);

 if (ret) {
  trans->block_rsv = rsv;
  btrfs_abort_transaction(trans, root, ret);
  return ret;
 }

 ret = btrfs_update_inode(trans, root, inode);
 if (ret)
  btrfs_abort_transaction(trans, root, ret);
 trans->block_rsv = rsv;

 return ret;
}
