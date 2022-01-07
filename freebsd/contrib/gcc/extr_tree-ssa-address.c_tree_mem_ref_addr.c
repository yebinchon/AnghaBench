
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ TMR_BASE (scalar_t__) ;
 scalar_t__ TMR_INDEX (scalar_t__) ;
 scalar_t__ TMR_OFFSET (scalar_t__) ;
 scalar_t__ TMR_STEP (scalar_t__) ;
 scalar_t__ TMR_SYMBOL (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ build_addr (scalar_t__,int ) ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 int current_function_decl ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ sizetype ;
 int zero_p (scalar_t__) ;

tree
tree_mem_ref_addr (tree type, tree mem_ref)
{
  tree addr;
  tree act_elem;
  tree step = TMR_STEP (mem_ref), offset = TMR_OFFSET (mem_ref);
  tree sym = TMR_SYMBOL (mem_ref), base = TMR_BASE (mem_ref);
  tree addr_base = NULL_TREE, addr_off = NULL_TREE;

  if (sym)
    addr_base = fold_convert (type, build_addr (sym, current_function_decl));
  else if (base && POINTER_TYPE_P (TREE_TYPE (base)))
    {
      addr_base = fold_convert (type, base);
      base = NULL_TREE;
    }

  act_elem = TMR_INDEX (mem_ref);
  if (act_elem)
    {
      if (step)
 act_elem = fold_build2 (MULT_EXPR, sizetype, act_elem, step);
      addr_off = act_elem;
    }

  act_elem = base;
  if (act_elem)
    {
      if (addr_off)
 addr_off = fold_build2 (PLUS_EXPR, sizetype, addr_off, act_elem);
      else
 addr_off = act_elem;
    }

  if (!zero_p (offset))
    {
      if (addr_off)
 addr_off = fold_build2 (PLUS_EXPR, sizetype, addr_off, offset);
      else
 addr_off = offset;
    }

  if (addr_off)
    {
      addr = fold_convert (type, addr_off);
      if (addr_base)
 addr = fold_build2 (PLUS_EXPR, type, addr_base, addr);
    }
  else if (addr_base)
    addr = addr_base;
  else
    addr = build_int_cst (type, 0);

  return addr;
}
