
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct mem_address {void* step; int index; scalar_t__ symbol; void* base; void* offset; } ;
struct affine_tree_combination {int dummy; } ;
typedef int block_stmt_iterator ;


 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 void* TREE_TYPE (void*) ;
 int addr_to_parts (struct affine_tree_combination*,struct mem_address*) ;
 void* build_addr (scalar_t__,int ) ;
 void* build_pointer_type (void*) ;
 void* create_mem_ref_raw (void*,struct mem_address*) ;
 int current_function_decl ;
 int fold_build2 (int ,void*,void*,void*) ;
 void* fold_convert (void*,void*) ;
 void* force_gimple_operand_bsi (int *,int ,int,scalar_t__) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int gimplify_mem_ref_parts (int *,struct mem_address*) ;
 scalar_t__ integer_onep (void*) ;
 scalar_t__ integer_zerop (void*) ;
 void* sizetype ;

tree
create_mem_ref (block_stmt_iterator *bsi, tree type,
  struct affine_tree_combination *addr)
{
  tree mem_ref, tmp;
  tree addr_type = build_pointer_type (type), atype;
  struct mem_address parts;

  addr_to_parts (addr, &parts);
  gimplify_mem_ref_parts (bsi, &parts);
  mem_ref = create_mem_ref_raw (type, &parts);
  if (mem_ref)
    return mem_ref;



  if (parts.step && !integer_onep (parts.step))
    {

      gcc_assert (parts.index);
      parts.index = force_gimple_operand_bsi (bsi,
    fold_build2 (MULT_EXPR, sizetype,
          parts.index, parts.step),
    1, NULL_TREE);
      parts.step = NULL_TREE;

      mem_ref = create_mem_ref_raw (type, &parts);
      if (mem_ref)
 return mem_ref;
    }

  if (parts.symbol)
    {
      tmp = fold_convert (addr_type,
     build_addr (parts.symbol, current_function_decl));


      if (parts.base)
 {
   if (parts.index)
     parts.base = force_gimple_operand_bsi (bsi,
   fold_build2 (PLUS_EXPR, addr_type,
         fold_convert (addr_type, parts.base),
         tmp),
   1, NULL_TREE);
   else
     {
       parts.index = parts.base;
       parts.base = tmp;
     }
 }
      else
 parts.base = tmp;
      parts.symbol = NULL_TREE;

      mem_ref = create_mem_ref_raw (type, &parts);
      if (mem_ref)
 return mem_ref;
    }

  if (parts.index)
    {

      if (parts.base)
 {
   atype = TREE_TYPE (parts.base);
   parts.base = force_gimple_operand_bsi (bsi,
   fold_build2 (PLUS_EXPR, atype,
         parts.base,
             fold_convert (atype, parts.index)),
   1, NULL_TREE);
 }
      else
 parts.base = parts.index;
      parts.index = NULL_TREE;

      mem_ref = create_mem_ref_raw (type, &parts);
      if (mem_ref)
 return mem_ref;
    }

  if (parts.offset && !integer_zerop (parts.offset))
    {

      if (parts.base)
 {
   atype = TREE_TYPE (parts.base);
   parts.base = force_gimple_operand_bsi (bsi,
   fold_build2 (PLUS_EXPR, atype,
         parts.base,
         fold_convert (atype, parts.offset)),
   1, NULL_TREE);
 }
      else
 parts.base = parts.offset;

      parts.offset = NULL_TREE;

      mem_ref = create_mem_ref_raw (type, &parts);
      if (mem_ref)
 return mem_ref;
    }




  gcc_assert (parts.symbol == NULL_TREE);
  gcc_assert (parts.index == NULL_TREE);
  gcc_assert (!parts.step || integer_onep (parts.step));
  gcc_assert (!parts.offset || integer_zerop (parts.offset));
  gcc_unreachable ();
}
