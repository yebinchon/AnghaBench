
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int root_tag_get (struct radix_tree_root*,unsigned int) ;

int radix_tree_tagged(struct radix_tree_root *root, unsigned int tag)
{
 return root_tag_get(root, tag);
}
