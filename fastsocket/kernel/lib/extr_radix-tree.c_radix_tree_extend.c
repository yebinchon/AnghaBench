
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int height; int * rnode; } ;
struct radix_tree_node {unsigned int height; int count; int * slots; } ;


 int ENOMEM ;
 int RADIX_TREE_MAX_TAGS ;
 int indirect_to_ptr (int *) ;
 struct radix_tree_node* ptr_to_indirect (struct radix_tree_node*) ;
 unsigned long radix_tree_maxindex (unsigned int) ;
 struct radix_tree_node* radix_tree_node_alloc (struct radix_tree_root*) ;
 int rcu_assign_pointer (int *,struct radix_tree_node*) ;
 scalar_t__ root_tag_get (struct radix_tree_root*,int) ;
 int tag_set (struct radix_tree_node*,int,int ) ;

__attribute__((used)) static int radix_tree_extend(struct radix_tree_root *root, unsigned long index)
{
 struct radix_tree_node *node;
 unsigned int height;
 int tag;


 height = root->height + 1;
 while (index > radix_tree_maxindex(height))
  height++;

 if (root->rnode == ((void*)0)) {
  root->height = height;
  goto out;
 }

 do {
  unsigned int newheight;
  if (!(node = radix_tree_node_alloc(root)))
   return -ENOMEM;


  node->slots[0] = indirect_to_ptr(root->rnode);


  for (tag = 0; tag < RADIX_TREE_MAX_TAGS; tag++) {
   if (root_tag_get(root, tag))
    tag_set(node, tag, 0);
  }

  newheight = root->height+1;
  node->height = newheight;
  node->count = 1;
  node = ptr_to_indirect(node);
  rcu_assign_pointer(root->rnode, node);
  root->height = newheight;
 } while (height > root->height);
out:
 return 0;
}
