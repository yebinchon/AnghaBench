
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_key {int offset; int objectid; } ;


 int BTRFS_ADD_DELAYED_EXTENT ;
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;
 int BUG_ON (int) ;
 int btrfs_add_delayed_data_ref (int ,struct btrfs_trans_handle*,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int *,int ) ;

int btrfs_alloc_reserved_file_extent(struct btrfs_trans_handle *trans,
         struct btrfs_root *root,
         u64 root_objectid, u64 owner,
         u64 offset, struct btrfs_key *ins)
{
 int ret;

 BUG_ON(root_objectid == BTRFS_TREE_LOG_OBJECTID);

 ret = btrfs_add_delayed_data_ref(root->fs_info, trans, ins->objectid,
      ins->offset, 0,
      root_objectid, owner, offset,
      BTRFS_ADD_DELAYED_EXTENT, ((void*)0), 0);
 return ret;
}
