
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_range_t ;
typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ get_base_address (scalar_t__) ;
 int * get_value_range (scalar_t__) ;
 scalar_t__ range_is_nonnull (int *) ;
 scalar_t__ tree_expr_nonzero_warnv_p (scalar_t__,int*) ;

__attribute__((used)) static bool
vrp_expr_computes_nonzero (tree expr, bool *strict_overflow_p)
{
  if (tree_expr_nonzero_warnv_p (expr, strict_overflow_p))
    return 1;



  if (TREE_CODE (expr) == ADDR_EXPR)
    {
      tree base = get_base_address (TREE_OPERAND (expr, 0));

      if (base != NULL_TREE
   && TREE_CODE (base) == INDIRECT_REF
   && TREE_CODE (TREE_OPERAND (base, 0)) == SSA_NAME)
 {
   value_range_t *vr = get_value_range (TREE_OPERAND (base, 0));
   if (range_is_nonnull (vr))
     return 1;
 }
    }

  return 0;
}
