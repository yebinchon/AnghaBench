
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* btree_inode; struct btrfs_root* tree_root; } ;
struct TYPE_2__ {int i_mapping; } ;


 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int btrfs_wait_ordered_extents (struct btrfs_root*,int ,int ) ;
 int filemap_flush (int ) ;
 int trace_btrfs_sync_fs (int) ;

int btrfs_sync_fs(struct super_block *sb, int wait)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_root *root = fs_info->tree_root;
 int ret;

 trace_btrfs_sync_fs(wait);

 if (!wait) {
  filemap_flush(fs_info->btree_inode->i_mapping);
  return 0;
 }

 btrfs_wait_ordered_extents(root, 0, 0);

 trans = btrfs_start_transaction(root, 0);
 if (IS_ERR(trans))
  return PTR_ERR(trans);
 ret = btrfs_commit_transaction(trans, root);
 return ret;
}
