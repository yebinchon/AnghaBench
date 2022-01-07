
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct inode {int i_mapping; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_ordered_inode_tree {int tree; int lock; int * last; } ;
struct btrfs_ordered_extent {int wait; int root_extent_list; int flags; struct rb_node rb_node; } ;
struct TYPE_4__ {int ordered_operations; struct btrfs_ordered_inode_tree ordered_tree; struct btrfs_root* root; } ;
struct TYPE_3__ {int ordered_extent_lock; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_ORDERED_COMPLETE ;
 int PAGECACHE_TAG_DIRTY ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int list_del_init (int *) ;
 int mapping_tagged (int ,int ) ;
 int rb_erase (struct rb_node*,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_btrfs_ordered_extent_remove (struct inode*,struct btrfs_ordered_extent*) ;
 int wake_up (int *) ;

void btrfs_remove_ordered_extent(struct inode *inode,
     struct btrfs_ordered_extent *entry)
{
 struct btrfs_ordered_inode_tree *tree;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct rb_node *node;

 tree = &BTRFS_I(inode)->ordered_tree;
 spin_lock_irq(&tree->lock);
 node = &entry->rb_node;
 rb_erase(node, &tree->tree);
 tree->last = ((void*)0);
 set_bit(BTRFS_ORDERED_COMPLETE, &entry->flags);
 spin_unlock_irq(&tree->lock);

 spin_lock(&root->fs_info->ordered_extent_lock);
 list_del_init(&entry->root_extent_list);

 trace_btrfs_ordered_extent_remove(inode, entry);






 if (RB_EMPTY_ROOT(&tree->tree) &&
     !mapping_tagged(inode->i_mapping, PAGECACHE_TAG_DIRTY)) {
  list_del_init(&BTRFS_I(inode)->ordered_operations);
 }
 spin_unlock(&root->fs_info->ordered_extent_lock);
 wake_up(&entry->wait);
}
