
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 int DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_HAS_VALUE_EXPR_P (int ) ;
 int DECL_SEEN_IN_BIND_EXPR_P (int ) ;
 int DECL_VALUE_EXPR (int ) ;
 int GS_ALL_DONE ;
 int GS_ERROR ;
 int GS_OK ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_STATIC (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ current_function_decl ;
 scalar_t__ decl_function_context (int ) ;
 scalar_t__ errorcount ;
 int gcc_assert (int) ;
 scalar_t__ gimplify_omp_ctxp ;
 scalar_t__ omp_notice_variable (scalar_t__,int ,int) ;
 scalar_t__ sorrycount ;
 int unshare_expr (int ) ;

__attribute__((used)) static enum gimplify_status
gimplify_var_or_parm_decl (tree *expr_p)
{
  tree decl = *expr_p;







  if (TREE_CODE (decl) == VAR_DECL
      && !DECL_SEEN_IN_BIND_EXPR_P (decl)
      && !TREE_STATIC (decl) && !DECL_EXTERNAL (decl)
      && decl_function_context (decl) == current_function_decl)
    {
      gcc_assert (errorcount || sorrycount);
      return GS_ERROR;
    }


  if (gimplify_omp_ctxp && omp_notice_variable (gimplify_omp_ctxp, decl, 1))
    return GS_ALL_DONE;


  if (DECL_HAS_VALUE_EXPR_P (decl))
    {
      *expr_p = unshare_expr (DECL_VALUE_EXPR (decl));
      return GS_OK;
    }

  return GS_ALL_DONE;
}
