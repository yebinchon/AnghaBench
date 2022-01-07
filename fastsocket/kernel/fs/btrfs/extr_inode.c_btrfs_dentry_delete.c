
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_parent; struct inode* d_inode; } ;
struct btrfs_root {int root_item; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 scalar_t__ BTRFS_EMPTY_SUBVOL_DIR_OBJECTID ;
 TYPE_2__* BTRFS_I (struct inode*) ;
 int IS_ROOT (struct dentry*) ;
 scalar_t__ btrfs_ino (struct inode*) ;
 scalar_t__ btrfs_root_refs (int *) ;

__attribute__((used)) static int btrfs_dentry_delete(struct dentry *dentry)
{
 struct btrfs_root *root;
 struct inode *inode = dentry->d_inode;

 if (!inode && !IS_ROOT(dentry))
  inode = dentry->d_parent->d_inode;

 if (inode) {
  root = BTRFS_I(inode)->root;
  if (btrfs_root_refs(&root->root_item) == 0)
   return 1;

  if (btrfs_ino(inode) == BTRFS_EMPTY_SUBVOL_DIR_OBJECTID)
   return 1;
 }
 return 0;
}
