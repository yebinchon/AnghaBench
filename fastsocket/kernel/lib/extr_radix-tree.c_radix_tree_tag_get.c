
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int rnode; } ;
struct radix_tree_node {unsigned int height; int * slots; } ;


 int BUG_ON (int) ;
 unsigned long RADIX_TREE_MAP_MASK ;
 unsigned int RADIX_TREE_MAP_SHIFT ;
 struct radix_tree_node* indirect_to_ptr (struct radix_tree_node*) ;
 int radix_tree_is_indirect_ptr (struct radix_tree_node*) ;
 unsigned long radix_tree_maxindex (unsigned int) ;
 struct radix_tree_node* rcu_dereference (int ) ;
 int root_tag_get (struct radix_tree_root*,unsigned int) ;
 int tag_get (struct radix_tree_node*,unsigned int,int) ;

int radix_tree_tag_get(struct radix_tree_root *root,
   unsigned long index, unsigned int tag)
{
 unsigned int height, shift;
 struct radix_tree_node *node;
 int saw_unset_tag = 0;


 if (!root_tag_get(root, tag))
  return 0;

 node = rcu_dereference(root->rnode);
 if (node == ((void*)0))
  return 0;

 if (!radix_tree_is_indirect_ptr(node))
  return (index == 0);
 node = indirect_to_ptr(node);

 height = node->height;
 if (index > radix_tree_maxindex(height))
  return 0;

 shift = (height - 1) * RADIX_TREE_MAP_SHIFT;

 for ( ; ; ) {
  int offset;

  if (node == ((void*)0))
   return 0;

  offset = (index >> shift) & RADIX_TREE_MAP_MASK;





  if (!tag_get(node, tag, offset))
   saw_unset_tag = 1;
  if (height == 1) {
   int ret = tag_get(node, tag, offset);

   BUG_ON(ret && saw_unset_tag);
   return !!ret;
  }
  node = rcu_dereference(node->slots[offset]);
  shift -= RADIX_TREE_MAP_SHIFT;
  height--;
 }
}
