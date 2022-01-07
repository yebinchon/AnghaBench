
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_GOMP_BARRIER ;
 int * built_in_decls ;
 int finish_call_expr (int ,int *,int,int) ;
 int finish_expr_stmt (int ) ;

void
finish_omp_barrier (void)
{
  tree fn = built_in_decls[BUILT_IN_GOMP_BARRIER];
  tree stmt = finish_call_expr (fn, ((void*)0), 0, 0);
  finish_expr_stmt (stmt);
}
