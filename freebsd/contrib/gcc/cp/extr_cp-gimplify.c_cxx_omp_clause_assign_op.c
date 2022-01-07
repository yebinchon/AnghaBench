
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * CP_OMP_CLAUSE_INFO (int *) ;
 int MODIFY_EXPR ;
 int TREE_VEC_ELT (int *,int) ;
 int * build2 (int ,int ,int *,int *) ;
 int * cxx_omp_clause_apply_fn (int ,int *,int *) ;
 int void_type_node ;

tree
cxx_omp_clause_assign_op (tree clause, tree dst, tree src)
{
  tree info = CP_OMP_CLAUSE_INFO (clause);
  tree ret = ((void*)0);

  if (info)
    ret = cxx_omp_clause_apply_fn (TREE_VEC_ELT (info, 2), dst, src);
  if (ret == ((void*)0))
    ret = build2 (MODIFY_EXPR, void_type_node, dst, src);

  return ret;
}
