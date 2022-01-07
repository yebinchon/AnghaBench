
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_4__ {int is_nested; struct TYPE_4__* outer; } ;
typedef TYPE_1__ omp_context ;


 int gcc_assert (int) ;
 scalar_t__ is_global_var (int *) ;
 int * maybe_lookup_decl (int *,TYPE_1__*) ;

__attribute__((used)) static tree
lookup_decl_in_outer_ctx (tree decl, omp_context *ctx)
{
  tree t;
  omp_context *up;

  gcc_assert (ctx->is_nested);

  for (up = ctx->outer, t = ((void*)0); up && t == ((void*)0); up = up->outer)
    t = maybe_lookup_decl (decl, up);

  gcc_assert (t || is_global_var (decl));

  return t ? t : decl;
}
