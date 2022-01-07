
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {unsigned int height; int rnode; } ;
struct radix_tree_path {int offset; struct radix_tree_node* node; } ;
struct radix_tree_node {struct radix_tree_node** slots; } ;


 unsigned long RADIX_TREE_MAP_MASK ;
 unsigned int RADIX_TREE_MAP_SHIFT ;
 struct radix_tree_node* indirect_to_ptr (int ) ;
 unsigned long min (unsigned long,int ) ;
 int radix_tree_maxindex (unsigned int) ;
 int root_tag_get (struct radix_tree_root*,unsigned int) ;
 int root_tag_set (struct radix_tree_root*,unsigned int) ;
 scalar_t__ tag_get (struct radix_tree_node*,unsigned int,int) ;
 int tag_set (struct radix_tree_node*,unsigned int,int) ;

unsigned long radix_tree_range_tag_if_tagged(struct radix_tree_root *root,
  unsigned long *first_indexp, unsigned long last_index,
  unsigned long nr_to_tag,
  unsigned int iftag, unsigned int settag)
{
 unsigned int height = root->height;
 struct radix_tree_path path[height];
 struct radix_tree_path *pathp = path;
 struct radix_tree_node *slot;
 unsigned int shift;
 unsigned long tagged = 0;
 unsigned long index = *first_indexp;

 last_index = min(last_index, radix_tree_maxindex(height));
 if (index > last_index)
  return 0;
 if (!nr_to_tag)
  return 0;
 if (!root_tag_get(root, iftag)) {
  *first_indexp = last_index + 1;
  return 0;
 }
 if (height == 0) {
  *first_indexp = last_index + 1;
  root_tag_set(root, settag);
  return 1;
 }

 shift = (height - 1) * RADIX_TREE_MAP_SHIFT;
 slot = indirect_to_ptr(root->rnode);






 path[height - 1].node = ((void*)0);

 for (;;) {
  int offset;

  offset = (index >> shift) & RADIX_TREE_MAP_MASK;
  if (!slot->slots[offset])
   goto next;
  if (!tag_get(slot, iftag, offset))
   goto next;
  if (height > 1) {

   height--;
   shift -= RADIX_TREE_MAP_SHIFT;
   path[height - 1].node = slot;
   path[height - 1].offset = offset;
   slot = slot->slots[offset];
   continue;
  }


  tagged++;
  tag_set(slot, settag, offset);


  pathp = &path[0];
  while (pathp->node) {

   if (tag_get(pathp->node, settag, pathp->offset))
    break;
   tag_set(pathp->node, settag, pathp->offset);
   pathp++;
  }

next:

  index = ((index >> shift) + 1) << shift;

  if (index > last_index || !index)
   break;
  if (tagged >= nr_to_tag)
   break;
  while (((index >> shift) & RADIX_TREE_MAP_MASK) == 0) {





   slot = path[height - 1].node;
   height++;
   shift += RADIX_TREE_MAP_SHIFT;
  }
 }




 if (tagged > 0)
  root_tag_set(root, settag);
 *first_indexp = index;

 return tagged;
}
