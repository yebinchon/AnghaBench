
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_5__ {scalar_t__ objectid; } ;
struct TYPE_6__ {TYPE_2__ location; } ;
struct TYPE_4__ {struct btrfs_root* tree_root; } ;


 scalar_t__ BTRFS_FREE_INO_OBJECTID ;
 TYPE_3__* BTRFS_I (struct inode*) ;

__attribute__((used)) static inline bool btrfs_is_free_space_inode(struct btrfs_root *root,
           struct inode *inode)
{
 if (root == root->fs_info->tree_root ||
     BTRFS_I(inode)->location.objectid == BTRFS_FREE_INO_OBJECTID)
  return 1;
 return 0;
}
