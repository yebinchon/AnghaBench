
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct gimplify_omp_ctx {struct gimplify_omp_ctx* outer_context; scalar_t__ is_parallel; scalar_t__ is_combined_parallel; int variables; } ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_3__ {int value; } ;


 int DECL_NAME (scalar_t__) ;
 int GOVD_EXPLICIT ;
 int GOVD_FIRSTPRIVATE ;
 int GOVD_PRIVATE ;
 int GOVD_REDUCTION ;
 int GOVD_SHARED ;
 int IDENTIFIER_POINTER (int ) ;
 int error (char*,int ) ;
 struct gimplify_omp_ctx* gimplify_omp_ctxp ;
 int is_global_var (scalar_t__) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;

__attribute__((used)) static bool
omp_is_private (struct gimplify_omp_ctx *ctx, tree decl)
{
  splay_tree_node n;

  n = splay_tree_lookup (ctx->variables, (splay_tree_key)decl);
  if (n != ((void*)0))
    {
      if (n->value & GOVD_SHARED)
 {
   if (ctx == gimplify_omp_ctxp)
     {
       error ("iteration variable %qs should be private",
       IDENTIFIER_POINTER (DECL_NAME (decl)));
       n->value = GOVD_PRIVATE;
       return 1;
     }
   else
     return 0;
 }
      else if ((n->value & GOVD_EXPLICIT) != 0
        && (ctx == gimplify_omp_ctxp
     || (ctx->is_combined_parallel
         && gimplify_omp_ctxp->outer_context == ctx)))
 {
   if ((n->value & GOVD_FIRSTPRIVATE) != 0)
     error ("iteration variable %qs should not be firstprivate",
     IDENTIFIER_POINTER (DECL_NAME (decl)));
   else if ((n->value & GOVD_REDUCTION) != 0)
     error ("iteration variable %qs should not be reduction",
     IDENTIFIER_POINTER (DECL_NAME (decl)));
 }
      return 1;
    }

  if (ctx->is_parallel)
    return 0;
  else if (ctx->outer_context)
    return omp_is_private (ctx->outer_context, decl);
  else
    return !is_global_var (decl);
}
