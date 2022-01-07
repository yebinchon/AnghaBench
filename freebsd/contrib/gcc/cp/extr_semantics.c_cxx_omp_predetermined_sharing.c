
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum omp_clause_default_kind { ____Placeholder_omp_clause_default_kind } omp_clause_default_kind ;


 int CP_DECL_CONTEXT (int ) ;
 scalar_t__ IS_AGGR_TYPE (int ) ;
 int OMP_CLAUSE_DEFAULT_SHARED ;
 int OMP_CLAUSE_DEFAULT_UNSPECIFIED ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ TYPE_P (int ) ;
 int c_omp_predetermined_sharing (int ) ;

enum omp_clause_default_kind
cxx_omp_predetermined_sharing (tree decl)
{
  enum omp_clause_default_kind kind;

  kind = c_omp_predetermined_sharing (decl);
  if (kind != OMP_CLAUSE_DEFAULT_UNSPECIFIED)
    return kind;


  if (TREE_STATIC (decl))
    {
      tree ctx = CP_DECL_CONTEXT (decl);
      if (TYPE_P (ctx) && IS_AGGR_TYPE (ctx))
 return OMP_CLAUSE_DEFAULT_SHARED;
    }

  return OMP_CLAUSE_DEFAULT_UNSPECIFIED;
}
