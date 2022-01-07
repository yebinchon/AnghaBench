
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; int root_item; int root_key; TYPE_2__* node; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct TYPE_3__ {struct btrfs_root* extent_root; struct btrfs_root* tree_root; } ;


 scalar_t__ btrfs_root_bytenr (int *) ;
 scalar_t__ btrfs_root_used (int *) ;
 int btrfs_set_root_node (int *,TYPE_2__*) ;
 int btrfs_update_root (struct btrfs_trans_handle*,struct btrfs_root*,int *,int *) ;
 int btrfs_write_dirty_block_groups (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int switch_commit_root (struct btrfs_root*) ;

__attribute__((used)) static int update_cowonly_root(struct btrfs_trans_handle *trans,
          struct btrfs_root *root)
{
 int ret;
 u64 old_root_bytenr;
 u64 old_root_used;
 struct btrfs_root *tree_root = root->fs_info->tree_root;

 old_root_used = btrfs_root_used(&root->root_item);
 btrfs_write_dirty_block_groups(trans, root);

 while (1) {
  old_root_bytenr = btrfs_root_bytenr(&root->root_item);
  if (old_root_bytenr == root->node->start &&
      old_root_used == btrfs_root_used(&root->root_item))
   break;

  btrfs_set_root_node(&root->root_item, root->node);
  ret = btrfs_update_root(trans, tree_root,
     &root->root_key,
     &root->root_item);
  if (ret)
   return ret;

  old_root_used = btrfs_root_used(&root->root_item);
  ret = btrfs_write_dirty_block_groups(trans, root);
  if (ret)
   return ret;
 }

 if (root != root->fs_info->extent_root)
  switch_commit_root(root);

 return 0;
}
