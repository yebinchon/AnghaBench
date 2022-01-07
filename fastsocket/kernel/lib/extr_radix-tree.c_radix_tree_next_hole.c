
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int radix_tree_lookup (struct radix_tree_root*,unsigned long) ;

unsigned long radix_tree_next_hole(struct radix_tree_root *root,
    unsigned long index, unsigned long max_scan)
{
 unsigned long i;

 for (i = 0; i < max_scan; i++) {
  if (!radix_tree_lookup(root, index))
   break;
  index++;
  if (index == 0)
   break;
 }

 return index;
}
