
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode {int transid; TYPE_1__* transaction; } ;
struct dentry {TYPE_3__* d_parent; } ;
struct btrfs_trans_handle {int transid; TYPE_1__* transaction; } ;
struct btrfs_root {TYPE_2__* fs_info; int ref_cows; } ;
struct btrfs_pending_snapshot {int readonly; int error; int snap; int list; struct btrfs_root* root; struct dentry* dentry; int block_rsv; } ;
struct TYPE_6__ {int d_inode; } ;
struct TYPE_5__ {int extent_root; int trans_lock; } ;
struct TYPE_4__ {int pending_snapshots; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int btrfs_commit_transaction (struct inode*,int ) ;
 int btrfs_commit_transaction_async (struct inode*,int ,int) ;
 int btrfs_init_block_rsv (int *) ;
 struct inode* btrfs_lookup_dentry (int ,struct dentry*) ;
 int btrfs_orphan_cleanup (int ) ;
 int btrfs_snap_reserve_metadata (struct inode*,struct btrfs_pending_snapshot*) ;
 struct inode* btrfs_start_transaction (int ,int) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int kfree (struct btrfs_pending_snapshot*) ;
 struct btrfs_pending_snapshot* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_snapshot(struct btrfs_root *root, struct dentry *dentry,
      char *name, int namelen, u64 *async_transid,
      bool readonly)
{
 struct inode *inode;
 struct btrfs_pending_snapshot *pending_snapshot;
 struct btrfs_trans_handle *trans;
 int ret;

 if (!root->ref_cows)
  return -EINVAL;

 pending_snapshot = kzalloc(sizeof(*pending_snapshot), GFP_NOFS);
 if (!pending_snapshot)
  return -ENOMEM;

 btrfs_init_block_rsv(&pending_snapshot->block_rsv);
 pending_snapshot->dentry = dentry;
 pending_snapshot->root = root;
 pending_snapshot->readonly = readonly;

 trans = btrfs_start_transaction(root->fs_info->extent_root, 5);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  goto fail;
 }

 ret = btrfs_snap_reserve_metadata(trans, pending_snapshot);
 BUG_ON(ret);

 spin_lock(&root->fs_info->trans_lock);
 list_add(&pending_snapshot->list,
   &trans->transaction->pending_snapshots);
 spin_unlock(&root->fs_info->trans_lock);
 if (async_transid) {
  *async_transid = trans->transid;
  ret = btrfs_commit_transaction_async(trans,
         root->fs_info->extent_root, 1);
 } else {
  ret = btrfs_commit_transaction(trans,
            root->fs_info->extent_root);
 }
 BUG_ON(ret);

 ret = pending_snapshot->error;
 if (ret)
  goto fail;

 ret = btrfs_orphan_cleanup(pending_snapshot->snap);
 if (ret)
  goto fail;

 inode = btrfs_lookup_dentry(dentry->d_parent->d_inode, dentry);
 if (IS_ERR(inode)) {
  ret = PTR_ERR(inode);
  goto fail;
 }
 BUG_ON(!inode);
 d_instantiate(dentry, inode);
 ret = 0;
fail:
 kfree(pending_snapshot);
 return ret;
}
