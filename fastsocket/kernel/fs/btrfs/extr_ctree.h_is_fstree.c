
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 scalar_t__ BTRFS_FS_TREE_OBJECTID ;

__attribute__((used)) static inline int is_fstree(u64 rootid)
{
 if (rootid == BTRFS_FS_TREE_OBJECTID ||
     (s64)rootid >= (s64)BTRFS_FIRST_FREE_OBJECTID)
  return 1;
 return 0;
}
