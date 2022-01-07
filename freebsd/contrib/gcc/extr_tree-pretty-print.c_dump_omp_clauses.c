
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int pretty_printer ;


 int * OMP_CLAUSE_CHAIN (int *) ;
 int dump_omp_clause (int *,int *,int,int) ;
 int pp_space (int *) ;

__attribute__((used)) static void
dump_omp_clauses (pretty_printer *buffer, tree clause, int spc, int flags)
{
  if (clause == ((void*)0))
    return;

  pp_space (buffer);
  while (1)
    {
      dump_omp_clause (buffer, clause, spc, flags);
      clause = OMP_CLAUSE_CHAIN (clause);
      if (clause == ((void*)0))
 return;
      pp_space (buffer);
    }
}
