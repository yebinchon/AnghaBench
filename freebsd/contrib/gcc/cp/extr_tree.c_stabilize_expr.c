
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int NULL_TREE ;
 int TARGET_EXPR_SLOT (int ) ;
 int TREE_SIDE_EFFECTS (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_NEEDS_CONSTRUCTING (int ) ;
 int build_indirect_ref (int ,int ) ;
 int build_unary_op (int ,int ,int) ;
 int gcc_assert (int) ;
 int get_target_expr (int ) ;
 int real_lvalue_p (int ) ;

tree
stabilize_expr (tree exp, tree* initp)
{
  tree init_expr;

  if (!TREE_SIDE_EFFECTS (exp))
    init_expr = NULL_TREE;
  else if (!real_lvalue_p (exp)
    || !TYPE_NEEDS_CONSTRUCTING (TREE_TYPE (exp)))
    {
      init_expr = get_target_expr (exp);
      exp = TARGET_EXPR_SLOT (init_expr);
    }
  else
    {
      exp = build_unary_op (ADDR_EXPR, exp, 1);
      init_expr = get_target_expr (exp);
      exp = TARGET_EXPR_SLOT (init_expr);
      exp = build_indirect_ref (exp, 0);
    }
  *initp = init_expr;

  gcc_assert (!TREE_SIDE_EFFECTS (exp));
  return exp;
}
