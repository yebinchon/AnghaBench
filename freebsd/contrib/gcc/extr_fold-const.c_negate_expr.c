
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int NEGATE_EXPR ;
 scalar_t__ NULL_TREE ;
 int STRIP_SIGN_NOPS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ fold_negate_expr (scalar_t__) ;

__attribute__((used)) static tree
negate_expr (tree t)
{
  tree type, tem;

  if (t == NULL_TREE)
    return NULL_TREE;

  type = TREE_TYPE (t);
  STRIP_SIGN_NOPS (t);

  tem = fold_negate_expr (t);
  if (!tem)
    tem = build1 (NEGATE_EXPR, TREE_TYPE (t), t);
  return fold_convert (type, tem);
}
