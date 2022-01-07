
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CONTAINS_PLACEHOLDER_P (scalar_t__) ;
 scalar_t__ EXPR_HAS_LOCATION (scalar_t__) ;
 int EXPR_LOCUS (scalar_t__) ;
 scalar_t__ INTEGER_TYPE ;
 int MODIFY_EXPR ;
 int NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 int SET_EXPR_LOCUS (scalar_t__,int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_IS_SIZETYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ create_tmp_var (scalar_t__,int *) ;
 int fb_rvalue ;
 int gimplify_and_add (scalar_t__,scalar_t__*) ;
 int gimplify_expr (scalar_t__*,scalar_t__*,int *,int ,int ) ;
 int input_location ;
 int is_gimple_val ;
 scalar_t__ unshare_expr (scalar_t__) ;

void
gimplify_one_sizepos (tree *expr_p, tree *stmt_p)
{
  tree type, expr = *expr_p;






  if (expr == NULL_TREE || TREE_CONSTANT (expr)
      || TREE_CODE (expr) == VAR_DECL
      || CONTAINS_PLACEHOLDER_P (expr))
    return;

  type = TREE_TYPE (expr);
  *expr_p = unshare_expr (expr);

  gimplify_expr (expr_p, stmt_p, ((void*)0), is_gimple_val, fb_rvalue);
  expr = *expr_p;







  if (TREE_TYPE (expr) != type
      && TREE_CODE (type) == INTEGER_TYPE
      && TYPE_IS_SIZETYPE (type))
    {
      tree tmp;

      *expr_p = create_tmp_var (type, ((void*)0));
      tmp = build1 (NOP_EXPR, type, expr);
      tmp = build2 (MODIFY_EXPR, type, *expr_p, tmp);
      if (EXPR_HAS_LOCATION (expr))
 SET_EXPR_LOCUS (tmp, EXPR_LOCUS (expr));
      else
 SET_EXPR_LOCATION (tmp, input_location);

      gimplify_and_add (tmp, stmt_p);
    }
}
