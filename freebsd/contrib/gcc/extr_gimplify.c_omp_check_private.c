
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct gimplify_omp_ctx {int variables; struct gimplify_omp_ctx* outer_context; int is_parallel; } ;
typedef TYPE_2__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_5__ {scalar_t__ (* omp_privatize_by_reference ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;
struct TYPE_6__ {int value; } ;


 int GOVD_SHARED ;
 scalar_t__ is_global_var (scalar_t__) ;
 TYPE_4__ lang_hooks ;
 TYPE_2__* splay_tree_lookup (int ,int ) ;
 scalar_t__ stub1 (scalar_t__) ;

__attribute__((used)) static bool
omp_check_private (struct gimplify_omp_ctx *ctx, tree decl)
{
  splay_tree_node n;

  do
    {
      ctx = ctx->outer_context;
      if (ctx == ((void*)0))
 return !(is_global_var (decl)

   || lang_hooks.decls.omp_privatize_by_reference (decl));

      n = splay_tree_lookup (ctx->variables, (splay_tree_key) decl);
      if (n != ((void*)0))
 return (n->value & GOVD_SHARED) == 0;
    }
  while (!ctx->is_parallel);
  return 0;
}
