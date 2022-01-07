
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 int GS_ALL_DONE ;
 int GS_ERROR ;
 int GS_OK ;
 int MINUS_EXPR ;
 int MODIFY_EXPR ;
 int PLUS_EXPR ;
 int POSTDECREMENT_EXPR ;
 int POSTINCREMENT_EXPR ;
 int PREDECREMENT_EXPR ;
 int PREINCREMENT_EXPR ;
 int TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int TREE_TYPE (int *) ;
 int append_to_statement_list (int *,int **) ;
 int * build2 (int,int ,int *,int *) ;
 int fb_lvalue ;
 int fb_rvalue ;
 int gcc_assert (int) ;
 int gimplify_and_add (int *,int **) ;
 int gimplify_expr (int **,int **,int **,int ,int ) ;
 int is_gimple_lvalue ;
 int is_gimple_val ;

__attribute__((used)) static enum gimplify_status
gimplify_self_mod_expr (tree *expr_p, tree *pre_p, tree *post_p,
   bool want_value)
{
  enum tree_code code;
  tree lhs, lvalue, rhs, t1, post = ((void*)0), *orig_post_p = post_p;
  bool postfix;
  enum tree_code arith_code;
  enum gimplify_status ret;

  code = TREE_CODE (*expr_p);

  gcc_assert (code == POSTINCREMENT_EXPR || code == POSTDECREMENT_EXPR
       || code == PREINCREMENT_EXPR || code == PREDECREMENT_EXPR);


  if (code == POSTINCREMENT_EXPR || code == POSTDECREMENT_EXPR)

    postfix = want_value;
  else
    postfix = 0;



  if (postfix)
    post_p = &post;


  if (code == PREINCREMENT_EXPR || code == POSTINCREMENT_EXPR)
    arith_code = PLUS_EXPR;
  else
    arith_code = MINUS_EXPR;


  lvalue = TREE_OPERAND (*expr_p, 0);
  ret = gimplify_expr (&lvalue, pre_p, post_p, is_gimple_lvalue, fb_lvalue);
  if (ret == GS_ERROR)
    return ret;


  lhs = lvalue;
  rhs = TREE_OPERAND (*expr_p, 1);



  if (postfix)
    {
      ret = gimplify_expr (&lhs, pre_p, post_p, is_gimple_val, fb_rvalue);
      if (ret == GS_ERROR)
 return ret;
    }

  t1 = build2 (arith_code, TREE_TYPE (*expr_p), lhs, rhs);
  t1 = build2 (MODIFY_EXPR, TREE_TYPE (lvalue), lvalue, t1);

  if (postfix)
    {
      gimplify_and_add (t1, orig_post_p);
      append_to_statement_list (post, orig_post_p);
      *expr_p = lhs;
      return GS_ALL_DONE;
    }
  else
    {
      *expr_p = t1;
      return GS_OK;
    }
}
