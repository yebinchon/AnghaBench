
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_4__ {struct TYPE_4__* outer; scalar_t__ is_nested; } ;
typedef TYPE_1__ omp_context ;


 int * maybe_lookup_decl (int *,TYPE_1__*) ;

__attribute__((used)) static tree
maybe_lookup_decl_in_outer_ctx (tree decl, omp_context *ctx)
{
  tree t = ((void*)0);
  omp_context *up;

  if (ctx->is_nested)
    for (up = ctx->outer, t = ((void*)0); up && t == ((void*)0); up = up->outer)
      t = maybe_lookup_decl (decl, up);

  return t ? t : decl;
}
