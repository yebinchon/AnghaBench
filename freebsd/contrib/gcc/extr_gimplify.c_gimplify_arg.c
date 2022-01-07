
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int fallback_t ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 int TREE_TYPE (int ) ;
 int fb_either ;
 int fb_rvalue ;
 int gimplify_expr (int *,int *,int *,int (*) (int ),int ) ;
 int is_gimple_lvalue (int ) ;
 scalar_t__ is_gimple_reg_type (int ) ;
 int is_gimple_val (int ) ;
 int maybe_with_size_expr (int *) ;

__attribute__((used)) static enum gimplify_status
gimplify_arg (tree *expr_p, tree *pre_p)
{
  bool (*test) (tree);
  fallback_t fb;






  if (is_gimple_reg_type (TREE_TYPE (*expr_p)))
    test = is_gimple_val, fb = fb_rvalue;
  else
    test = is_gimple_lvalue, fb = fb_either;


  maybe_with_size_expr (expr_p);





  return gimplify_expr (expr_p, pre_p, ((void*)0), test, fb);
}
