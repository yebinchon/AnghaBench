
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * CP_OMP_CLAUSE_INFO (int *) ;
 int TREE_VEC_ELT (int *,int ) ;
 int * cxx_omp_clause_apply_fn (int ,int *,int *) ;

tree
cxx_omp_clause_default_ctor (tree clause, tree decl)
{
  tree info = CP_OMP_CLAUSE_INFO (clause);
  tree ret = ((void*)0);

  if (info)
    ret = cxx_omp_clause_apply_fn (TREE_VEC_ELT (info, 0), decl, ((void*)0));

  return ret;
}
