
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nesting_info {struct nesting_info* next; int var_map; struct nesting_info* inner; } ;


 int ggc_free (struct nesting_info*) ;
 int htab_delete (int ) ;

__attribute__((used)) static void
free_nesting_tree (struct nesting_info *root)
{
  struct nesting_info *next;
  do
    {
      if (root->inner)
 free_nesting_tree (root->inner);
      htab_delete (root->var_map);
      next = root->next;
      ggc_free (root);
      root = next;
    }
  while (root);
}
