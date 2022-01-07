
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_root {int root_item; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int btrfs_is_free_space_inode (struct btrfs_root*,struct inode*) ;
 scalar_t__ btrfs_root_refs (int *) ;
 int generic_delete_inode (struct inode*) ;
 int generic_drop_inode (struct inode*) ;

void btrfs_drop_inode(struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;

 if (btrfs_root_refs(&root->root_item) == 0 &&
     !btrfs_is_free_space_inode(root, inode))
  generic_delete_inode(inode);
 else
  generic_drop_inode(inode);
}
