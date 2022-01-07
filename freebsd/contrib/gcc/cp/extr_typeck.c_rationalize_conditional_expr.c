
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int GE_EXPR ;
 int LE_EXPR ;
 scalar_t__ MAX_EXPR ;
 scalar_t__ MIN_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_SIDE_EFFECTS (int ) ;
 int build_conditional_expr (int ,int ,int ) ;
 int build_unary_op (int,int ,int ) ;
 int build_x_binary_op (int ,int ,scalar_t__,int ,scalar_t__,int *) ;
 int gcc_assert (int) ;

__attribute__((used)) static tree
rationalize_conditional_expr (enum tree_code code, tree t)
{



  if (TREE_CODE (t) == MIN_EXPR || TREE_CODE (t) == MAX_EXPR)
    {
      tree op0 = TREE_OPERAND (t, 0);
      tree op1 = TREE_OPERAND (t, 1);


      gcc_assert (!TREE_SIDE_EFFECTS (op0)
    && !TREE_SIDE_EFFECTS (op1));
      return
 build_conditional_expr (build_x_binary_op ((TREE_CODE (t) == MIN_EXPR
          ? LE_EXPR : GE_EXPR),
         op0, TREE_CODE (op0),
         op1, TREE_CODE (op1),
                          ((void*)0)),
       build_unary_op (code, op0, 0),
       build_unary_op (code, op1, 0));
    }

  return
    build_conditional_expr (TREE_OPERAND (t, 0),
       build_unary_op (code, TREE_OPERAND (t, 1), 0),
       build_unary_op (code, TREE_OPERAND (t, 2), 0));
}
