
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_root {int inode_lock; int inode_tree; TYPE_1__* fs_info; int root_item; } ;
struct TYPE_4__ {int rb_node; struct btrfs_root* root; } ;
struct TYPE_3__ {int subvol_srcu; struct btrfs_root* tree_root; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int RB_CLEAR_NODE (int *) ;
 int RB_EMPTY_NODE (int *) ;
 int RB_EMPTY_ROOT (int *) ;
 int btrfs_add_dead_root (struct btrfs_root*) ;
 scalar_t__ btrfs_root_refs (int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_srcu (int *) ;

__attribute__((used)) static void inode_tree_del(struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 int empty = 0;

 spin_lock(&root->inode_lock);
 if (!RB_EMPTY_NODE(&BTRFS_I(inode)->rb_node)) {
  rb_erase(&BTRFS_I(inode)->rb_node, &root->inode_tree);
  RB_CLEAR_NODE(&BTRFS_I(inode)->rb_node);
  empty = RB_EMPTY_ROOT(&root->inode_tree);
 }
 spin_unlock(&root->inode_lock);







 if (empty && btrfs_root_refs(&root->root_item) == 0 &&
     root != root->fs_info->tree_root) {
  synchronize_srcu(&root->fs_info->subvol_srcu);
  spin_lock(&root->inode_lock);
  empty = RB_EMPTY_ROOT(&root->inode_tree);
  spin_unlock(&root->inode_lock);
  if (empty)
   btrfs_add_dead_root(root);
 }
}
