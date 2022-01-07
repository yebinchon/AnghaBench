
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum omp_clause_default_kind { ____Placeholder_omp_clause_default_kind } omp_clause_default_kind ;


 int OMP_CLAUSE_DEFAULT_SHARED ;
 int OMP_CLAUSE_DEFAULT_UNSPECIFIED ;
 scalar_t__ TREE_READONLY (int ) ;

enum omp_clause_default_kind
c_omp_predetermined_sharing (tree decl)
{


  if (TREE_READONLY (decl))
    return OMP_CLAUSE_DEFAULT_SHARED;

  return OMP_CLAUSE_DEFAULT_UNSPECIFIED;
}
