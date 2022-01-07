
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int walk_tree_fn ;
struct nesting_info {struct nesting_info* next; struct nesting_info* inner; } ;


 int walk_function (int ,struct nesting_info*) ;

__attribute__((used)) static void
walk_all_functions (walk_tree_fn callback, struct nesting_info *root)
{
  do
    {
      if (root->inner)
 walk_all_functions (callback, root->inner);
      walk_function (callback, root);
      root = root->next;
    }
  while (root);
}
