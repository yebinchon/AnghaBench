
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ABS_EXPR ;
 scalar_t__ COMPARISON_CLASS_P (int ) ;
 scalar_t__ COND_EXPR ;
 int COND_EXPR_COND (int ) ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TRUNC_DIV_EXPR ;
 int TRUNC_MOD_EXPR ;
 scalar_t__ integer_pow2p (int ) ;
 int simplify_abs_using_ranges (int ,int ) ;
 int simplify_cond_using_ranges (int ) ;
 int simplify_div_or_mod_using_ranges (int ,int ,int) ;

void
simplify_stmt_using_ranges (tree stmt)
{
  if (TREE_CODE (stmt) == MODIFY_EXPR)
    {
      tree rhs = TREE_OPERAND (stmt, 1);
      enum tree_code rhs_code = TREE_CODE (rhs);




      if ((rhs_code == TRUNC_DIV_EXPR || rhs_code == TRUNC_MOD_EXPR)
   && INTEGRAL_TYPE_P (TREE_TYPE (TREE_OPERAND (rhs, 0)))
   && integer_pow2p (TREE_OPERAND (rhs, 1)))
 simplify_div_or_mod_using_ranges (stmt, rhs, rhs_code);


      if (rhs_code == ABS_EXPR
   && TREE_CODE (TREE_OPERAND (rhs, 0)) == SSA_NAME
   && INTEGRAL_TYPE_P (TREE_TYPE (TREE_OPERAND (rhs, 0))))
 simplify_abs_using_ranges (stmt, rhs);
    }
  else if (TREE_CODE (stmt) == COND_EXPR
    && COMPARISON_CLASS_P (COND_EXPR_COND (stmt)))
    {
      simplify_cond_using_ranges (stmt);
    }
}
