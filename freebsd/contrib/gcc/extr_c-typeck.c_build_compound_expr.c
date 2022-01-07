
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ CONVERT_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (int ) ;
 scalar_t__ build2 (scalar_t__,int ,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int input_location ;
 int warn_if_unused_value (scalar_t__,int ) ;
 scalar_t__ warn_unused_value ;
 int warning (int ,char*) ;

tree
build_compound_expr (tree expr1, tree expr2)
{
  if (!TREE_SIDE_EFFECTS (expr1))
    {



      if (warn_unused_value)
 {
   if (VOID_TYPE_P (TREE_TYPE (expr1))
       && (TREE_CODE (expr1) == NOP_EXPR
    || TREE_CODE (expr1) == CONVERT_EXPR))
     ;
   else if (VOID_TYPE_P (TREE_TYPE (expr1))
     && TREE_CODE (expr1) == COMPOUND_EXPR
     && (TREE_CODE (TREE_OPERAND (expr1, 1)) == CONVERT_EXPR
         || TREE_CODE (TREE_OPERAND (expr1, 1)) == NOP_EXPR))
     ;
   else
     warning (0, "left-hand operand of comma expression has no effect");
 }
    }





  else if (warn_unused_value)
    warn_if_unused_value (expr1, input_location);

  if (expr2 == error_mark_node)
    return error_mark_node;

  return build2 (COMPOUND_EXPR, TREE_TYPE (expr2), expr1, expr2);
}
