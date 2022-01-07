
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_ordered_inode_tree {int * last; int tree; int lock; } ;


 int RB_ROOT ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void
btrfs_ordered_inode_tree_init(struct btrfs_ordered_inode_tree *t)
{
 spin_lock_init(&t->lock);
 t->tree = RB_ROOT;
 t->last = ((void*)0);
}
