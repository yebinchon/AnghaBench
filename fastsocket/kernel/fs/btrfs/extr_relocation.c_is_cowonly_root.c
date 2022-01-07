
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ BTRFS_CHUNK_TREE_OBJECTID ;
 scalar_t__ BTRFS_CSUM_TREE_OBJECTID ;
 scalar_t__ BTRFS_DEV_TREE_OBJECTID ;
 scalar_t__ BTRFS_EXTENT_TREE_OBJECTID ;
 scalar_t__ BTRFS_ROOT_TREE_OBJECTID ;
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;

__attribute__((used)) static int is_cowonly_root(u64 root_objectid)
{
 if (root_objectid == BTRFS_ROOT_TREE_OBJECTID ||
     root_objectid == BTRFS_EXTENT_TREE_OBJECTID ||
     root_objectid == BTRFS_CHUNK_TREE_OBJECTID ||
     root_objectid == BTRFS_DEV_TREE_OBJECTID ||
     root_objectid == BTRFS_TREE_LOG_OBJECTID ||
     root_objectid == BTRFS_CSUM_TREE_OBJECTID)
  return 1;
 return 0;
}
