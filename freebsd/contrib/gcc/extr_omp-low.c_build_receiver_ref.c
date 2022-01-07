
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_5__ {int * receiver_decl; } ;
typedef TYPE_1__ omp_context ;


 int COMPONENT_REF ;
 int TREE_TYPE (int *) ;
 int * build3 (int ,int ,int *,int *,int *) ;
 int * build_fold_indirect_ref (int *) ;
 int * lookup_field (int *,TYPE_1__*) ;
 int * maybe_lookup_field (int *,TYPE_1__*) ;

__attribute__((used)) static tree
build_receiver_ref (tree var, bool by_ref, omp_context *ctx)
{
  tree x, field = lookup_field (var, ctx);



  x = maybe_lookup_field (field, ctx);
  if (x != ((void*)0))
    field = x;

  x = build_fold_indirect_ref (ctx->receiver_decl);
  x = build3 (COMPONENT_REF, TREE_TYPE (field), x, field, ((void*)0));
  if (by_ref)
    x = build_fold_indirect_ref (x);

  return x;
}
