
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int height; struct radix_tree_node* rnode; } ;
struct radix_tree_node {int count; void** slots; } ;


 int BUG_ON (int) ;
 unsigned long RADIX_TREE_INDIRECT_PTR ;
 struct radix_tree_node* indirect_to_ptr (struct radix_tree_node*) ;
 void* ptr_to_indirect (void*) ;
 int radix_tree_is_indirect_ptr (struct radix_tree_node*) ;
 int radix_tree_node_free (struct radix_tree_node*) ;

__attribute__((used)) static inline void radix_tree_shrink(struct radix_tree_root *root)
{

 while (root->height > 0) {
  struct radix_tree_node *to_free = root->rnode;
  void *newptr;

  BUG_ON(!radix_tree_is_indirect_ptr(to_free));
  to_free = indirect_to_ptr(to_free);





  if (to_free->count != 1)
   break;
  if (!to_free->slots[0])
   break;
  newptr = to_free->slots[0];
  if (root->height > 1)
   newptr = ptr_to_indirect(newptr);
  root->rnode = newptr;
  root->height--;
  if (root->height == 0)
   *((unsigned long *)&to_free->slots[0]) |=
      RADIX_TREE_INDIRECT_PTR;

  radix_tree_node_free(to_free);
 }
}
