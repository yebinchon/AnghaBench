
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mem_address {int base; } ;
struct affine_tree_combination {unsigned int n; int* coefs; int * elts; } ;


 int NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 int aff_combination_remove_elt (struct affine_tree_combination*,unsigned int) ;

__attribute__((used)) static void
move_pointer_to_base (struct mem_address *parts,
        struct affine_tree_combination *addr)
{
  unsigned i;
  tree val = NULL_TREE;

  for (i = 0; i < addr->n; i++)
    {
      if (addr->coefs[i] != 1)
 continue;

      val = addr->elts[i];
      if (POINTER_TYPE_P (TREE_TYPE (val)))
 break;
    }

  if (i == addr->n)
    return;

  parts->base = val;
  aff_combination_remove_elt (addr, i);
}
