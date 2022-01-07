
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 int COMPOUND_LITERAL_EXPR_DECL_STMT (int ) ;
 int DECL_EXPR_DECL (int ) ;
 scalar_t__ DECL_NAME (int ) ;
 int DECL_SEEN_IN_BIND_EXPR_P (int ) ;
 int GS_OK ;
 scalar_t__ NULL_TREE ;
 int gimple_add_tmp_var (int ) ;
 int gimplify_and_add (int ,int *) ;

__attribute__((used)) static enum gimplify_status
gimplify_compound_literal_expr (tree *expr_p, tree *pre_p)
{
  tree decl_s = COMPOUND_LITERAL_EXPR_DECL_STMT (*expr_p);
  tree decl = DECL_EXPR_DECL (decl_s);




  if (DECL_NAME (decl) == NULL_TREE && !DECL_SEEN_IN_BIND_EXPR_P (decl))
    gimple_add_tmp_var (decl);

  gimplify_and_add (decl_s, pre_p);
  *expr_p = decl;
  return GS_OK;
}
