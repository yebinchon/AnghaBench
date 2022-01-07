
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int omp_context ;


 int DECL_NAME (int ) ;
 int TREE_TYPE (int ) ;
 int omp_copy_decl_2 (int ,int ,int ,int *) ;

__attribute__((used)) static tree
omp_copy_decl_1 (tree var, omp_context *ctx)
{
  return omp_copy_decl_2 (var, DECL_NAME (var), TREE_TYPE (var), ctx);
}
