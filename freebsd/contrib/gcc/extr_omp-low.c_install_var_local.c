
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int cb; } ;
typedef TYPE_1__ omp_context ;


 int insert_decl_map (int *,int ,int ) ;
 int omp_copy_decl_1 (int ,TYPE_1__*) ;

__attribute__((used)) static tree
install_var_local (tree var, omp_context *ctx)
{
  tree new_var = omp_copy_decl_1 (var, ctx);
  insert_decl_map (&ctx->cb, var, new_var);
  return new_var;
}
