
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int sender_decl; } ;
typedef TYPE_1__ omp_context ;


 int COMPONENT_REF ;
 int TREE_TYPE (int ) ;
 int build3 (int ,int ,int ,int ,int *) ;
 int lookup_field (int ,TYPE_1__*) ;

__attribute__((used)) static tree
build_sender_ref (tree var, omp_context *ctx)
{
  tree field = lookup_field (var, ctx);
  return build3 (COMPONENT_REF, TREE_TYPE (field),
   ctx->sender_decl, field, ((void*)0));
}
