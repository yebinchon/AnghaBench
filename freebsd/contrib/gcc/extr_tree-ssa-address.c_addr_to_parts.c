
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mem_address {void* symbol; void* offset; void* step; void* index; void* base; } ;
struct affine_tree_combination {int offset; unsigned int n; int* coefs; scalar_t__ rest; scalar_t__* elts; } ;


 int MULT_EXPR ;
 void* NULL_TREE ;
 int add_to_parts (struct mem_address*,int ) ;
 void* build_int_cst_type (int ,int) ;
 int fold_build2 (int ,int ,int ,void*) ;
 int fold_convert (int ,scalar_t__) ;
 int most_expensive_mult_to_index (struct mem_address*,struct affine_tree_combination*) ;
 int move_fixed_address_to_symbol (struct mem_address*,struct affine_tree_combination*) ;
 int move_pointer_to_base (struct mem_address*,struct affine_tree_combination*) ;
 int sizetype ;

__attribute__((used)) static void
addr_to_parts (struct affine_tree_combination *addr, struct mem_address *parts)
{
  unsigned i;
  tree part;

  parts->symbol = NULL_TREE;
  parts->base = NULL_TREE;
  parts->index = NULL_TREE;
  parts->step = NULL_TREE;

  if (addr->offset)
    parts->offset = build_int_cst_type (sizetype, addr->offset);
  else
    parts->offset = NULL_TREE;


  move_fixed_address_to_symbol (parts, addr);



  most_expensive_mult_to_index (parts, addr);




  if (!parts->symbol)
    move_pointer_to_base (parts, addr);


  for (i = 0; i < addr->n; i++)
    {
      part = fold_convert (sizetype, addr->elts[i]);
      if (addr->coefs[i] != 1)
 part = fold_build2 (MULT_EXPR, sizetype, part,
       build_int_cst_type (sizetype, addr->coefs[i]));
      add_to_parts (parts, part);
    }
  if (addr->rest)
    add_to_parts (parts, fold_convert (sizetype, addr->rest));
}
