
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLEX_CST ;
 scalar_t__ COMPLEX_EXPR ;
 int IMAGPART_EXPR ;
 scalar_t__ MULT_EXPR ;
 scalar_t__ PLUS_EXPR ;
 int REALPART_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_IMAGPART (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_REALPART (int ) ;
 int TREE_TYPE (int ) ;
 int fold_build1 (int ,int ,int ) ;
 int fold_build2 (scalar_t__,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int integer_zero_node ;
 int save_expr (int ) ;

__attribute__((used)) static tree
fold_mult_zconjz (tree type, tree expr)
{
  tree itype = TREE_TYPE (type);
  tree rpart, ipart, tem;

  if (TREE_CODE (expr) == COMPLEX_EXPR)
    {
      rpart = TREE_OPERAND (expr, 0);
      ipart = TREE_OPERAND (expr, 1);
    }
  else if (TREE_CODE (expr) == COMPLEX_CST)
    {
      rpart = TREE_REALPART (expr);
      ipart = TREE_IMAGPART (expr);
    }
  else
    {
      expr = save_expr (expr);
      rpart = fold_build1 (REALPART_EXPR, itype, expr);
      ipart = fold_build1 (IMAGPART_EXPR, itype, expr);
    }

  rpart = save_expr (rpart);
  ipart = save_expr (ipart);
  tem = fold_build2 (PLUS_EXPR, itype,
       fold_build2 (MULT_EXPR, itype, rpart, rpart),
       fold_build2 (MULT_EXPR, itype, ipart, ipart));
  return fold_build2 (COMPLEX_EXPR, type, tem,
        fold_convert (itype, integer_zero_node));
}
