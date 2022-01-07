
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct gimplify_omp_ctx {struct gimplify_omp_ctx* outer_context; scalar_t__ is_parallel; int variables; } ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_3__ {int value; } ;


 int DECL_P (int *) ;
 int GOVD_FIRSTPRIVATE ;
 int GOVD_SEEN ;
 int GOVD_SHARED ;
 int omp_add_variable (struct gimplify_omp_ctx*,int *,int) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;

void
omp_firstprivatize_variable (struct gimplify_omp_ctx *ctx, tree decl)
{
  splay_tree_node n;

  if (decl == ((void*)0) || !DECL_P (decl))
    return;

  do
    {
      n = splay_tree_lookup (ctx->variables, (splay_tree_key)decl);
      if (n != ((void*)0))
 {
   if (n->value & GOVD_SHARED)
     n->value = GOVD_FIRSTPRIVATE | (n->value & GOVD_SEEN);
   else
     return;
 }
      else if (ctx->is_parallel)
 omp_add_variable (ctx, decl, GOVD_FIRSTPRIVATE);

      ctx = ctx->outer_context;
    }
  while (ctx);
}
