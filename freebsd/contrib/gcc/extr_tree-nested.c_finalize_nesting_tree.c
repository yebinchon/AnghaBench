
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nesting_info {struct nesting_info* next; struct nesting_info* inner; } ;


 int finalize_nesting_tree_1 (struct nesting_info*) ;

__attribute__((used)) static void
finalize_nesting_tree (struct nesting_info *root)
{
  do
    {
      if (root->inner)
 finalize_nesting_tree (root->inner);
      finalize_nesting_tree_1 (root);
      root = root->next;
    }
  while (root);
}
