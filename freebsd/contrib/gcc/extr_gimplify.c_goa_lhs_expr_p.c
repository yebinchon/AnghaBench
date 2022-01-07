
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ CONVERT_EXPR ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ NON_LVALUE_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static bool
goa_lhs_expr_p (tree expr, tree addr)
{



  while ((TREE_CODE (expr) == NOP_EXPR
          || TREE_CODE (expr) == CONVERT_EXPR
          || TREE_CODE (expr) == NON_LVALUE_EXPR)
         && TREE_OPERAND (expr, 0) != error_mark_node
         && (TYPE_MAIN_VARIANT (TREE_TYPE (expr))
             == TYPE_MAIN_VARIANT (TREE_TYPE (TREE_OPERAND (expr, 0)))))
    expr = TREE_OPERAND (expr, 0);

  if (TREE_CODE (expr) == INDIRECT_REF && TREE_OPERAND (expr, 0) == addr)
    return 1;
  if (TREE_CODE (addr) == ADDR_EXPR && expr == TREE_OPERAND (addr, 0))
    return 1;
  return 0;
}
