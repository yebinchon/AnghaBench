
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int rnode; } ;
struct radix_tree_node {int height; } ;


 unsigned int __lookup_tag (struct radix_tree_node*,void***,unsigned long,unsigned int,unsigned long*,unsigned int) ;
 struct radix_tree_node* indirect_to_ptr (struct radix_tree_node*) ;
 int radix_tree_is_indirect_ptr (struct radix_tree_node*) ;
 unsigned long radix_tree_maxindex (int ) ;
 struct radix_tree_node* rcu_dereference (int ) ;
 int root_tag_get (struct radix_tree_root*,unsigned int) ;

unsigned int
radix_tree_gang_lookup_tag_slot(struct radix_tree_root *root, void ***results,
  unsigned long first_index, unsigned int max_items,
  unsigned int tag)
{
 struct radix_tree_node *node;
 unsigned long max_index;
 unsigned long cur_index = first_index;
 unsigned int ret;


 if (!root_tag_get(root, tag))
  return 0;

 node = rcu_dereference(root->rnode);
 if (!node)
  return 0;

 if (!radix_tree_is_indirect_ptr(node)) {
  if (first_index > 0)
   return 0;
  results[0] = (void **)&root->rnode;
  return 1;
 }
 node = indirect_to_ptr(node);

 max_index = radix_tree_maxindex(node->height);

 ret = 0;
 while (ret < max_items) {
  unsigned int slots_found;
  unsigned long next_index;

  if (cur_index > max_index)
   break;
  slots_found = __lookup_tag(node, results + ret,
    cur_index, max_items - ret, &next_index, tag);
  ret += slots_found;
  if (next_index == 0)
   break;
  cur_index = next_index;
 }

 return ret;
}
