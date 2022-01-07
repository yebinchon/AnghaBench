
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping_tree {int lock; int rb_root; } ;


 int RB_ROOT ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void mapping_tree_init(struct mapping_tree *tree)
{
 tree->rb_root = RB_ROOT;
 spin_lock_init(&tree->lock);
}
