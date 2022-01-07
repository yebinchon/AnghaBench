
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ BINFO_VTABLE (scalar_t__) ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ VAR_DECL ;
 int gcc_assert (int) ;

tree
get_vtbl_decl_for_binfo (tree binfo)
{
  tree decl;

  decl = BINFO_VTABLE (binfo);
  if (decl && TREE_CODE (decl) == PLUS_EXPR)
    {
      gcc_assert (TREE_CODE (TREE_OPERAND (decl, 0)) == ADDR_EXPR);
      decl = TREE_OPERAND (TREE_OPERAND (decl, 0), 0);
    }
  if (decl)
    gcc_assert (TREE_CODE (decl) == VAR_DECL);
  return decl;
}
