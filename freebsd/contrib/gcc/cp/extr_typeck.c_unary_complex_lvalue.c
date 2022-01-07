
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int TREE_NO_WARNING ;


 int ADDR_EXPR ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ COND_EXPR ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ INIT_EXPR ;
 scalar_t__ IS_AGGR_TYPE (int) ;
 scalar_t__ MAX_EXPR ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ MIN_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 int NULL_TREE ;
 scalar_t__ OFFSET_REF ;
 scalar_t__ PREDECREMENT_EXPR ;
 scalar_t__ PREINCREMENT_EXPR ;
 scalar_t__ SAVE_EXPR ;
 scalar_t__ TREE_CODE (int) ;
 int TREE_OPERAND (int,int) ;
 scalar_t__ TREE_SIDE_EFFECTS (int) ;
 int TREE_TYPE (int) ;
 int build1 (int,int ,int) ;
 int build2 (scalar_t__,int,int,int) ;
 int build3 (scalar_t__,int ,int,int ,int *) ;
 int build_cplus_new (int,int) ;
 int build_pointer_type (int) ;
 int build_unary_op (int,int,int ) ;
 int current_function_decl ;
 scalar_t__ processing_template_decl ;
 int rationalize_conditional_expr (int,int) ;
 int stabilize_reference (int) ;

tree
unary_complex_lvalue (enum tree_code code, tree arg)
{



  if (processing_template_decl)
    return NULL_TREE;


  if (TREE_CODE (arg) == COMPOUND_EXPR)
    {
      tree real_result = build_unary_op (code, TREE_OPERAND (arg, 1), 0);
      return build2 (COMPOUND_EXPR, TREE_TYPE (real_result),
       TREE_OPERAND (arg, 0), real_result);
    }


  if (TREE_CODE (arg) == COND_EXPR
      || TREE_CODE (arg) == MIN_EXPR || TREE_CODE (arg) == MAX_EXPR)
    return rationalize_conditional_expr (code, arg);


  if (TREE_CODE (arg) == MODIFY_EXPR
      || TREE_CODE (arg) == PREINCREMENT_EXPR
      || TREE_CODE (arg) == PREDECREMENT_EXPR)
    {
      tree lvalue = TREE_OPERAND (arg, 0);
      if (TREE_SIDE_EFFECTS (lvalue))
 {
   lvalue = stabilize_reference (lvalue);
   arg = build2 (TREE_CODE (arg), TREE_TYPE (arg),
   lvalue, TREE_OPERAND (arg, 1));
 }
      return unary_complex_lvalue
 (code, build2 (COMPOUND_EXPR, TREE_TYPE (lvalue), arg, lvalue));
    }

  if (code != ADDR_EXPR)
    return NULL_TREE;


  if (TREE_CODE (arg) == MODIFY_EXPR
      || TREE_CODE (arg) == INIT_EXPR)
    {
      tree real_result = build_unary_op (code, TREE_OPERAND (arg, 0), 0);
      arg = build2 (COMPOUND_EXPR, TREE_TYPE (real_result),
      arg, real_result);
      TREE_NO_WARNING (arg) = 1;
      return arg;
    }

  if (TREE_CODE (TREE_TYPE (arg)) == FUNCTION_TYPE
      || TREE_CODE (TREE_TYPE (arg)) == METHOD_TYPE
      || TREE_CODE (arg) == OFFSET_REF)
    return NULL_TREE;



  {
    tree targ = arg;

    if (TREE_CODE (targ) == SAVE_EXPR)
      targ = TREE_OPERAND (targ, 0);

    if (TREE_CODE (targ) == CALL_EXPR && IS_AGGR_TYPE (TREE_TYPE (targ)))
      {
 if (TREE_CODE (arg) == SAVE_EXPR)
   targ = arg;
 else
   targ = build_cplus_new (TREE_TYPE (arg), arg);
 return build1 (ADDR_EXPR, build_pointer_type (TREE_TYPE (arg)), targ);
      }

    if (TREE_CODE (arg) == SAVE_EXPR && TREE_CODE (targ) == INDIRECT_REF)
      return build3 (SAVE_EXPR, build_pointer_type (TREE_TYPE (arg)),
       TREE_OPERAND (targ, 0), current_function_decl, ((void*)0));
  }


  return NULL_TREE;
}
