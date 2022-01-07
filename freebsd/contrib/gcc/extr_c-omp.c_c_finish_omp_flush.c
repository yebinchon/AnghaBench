
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_SYNCHRONIZE ;
 int add_stmt (int ) ;
 int build_function_call_expr (int ,int *) ;
 int * built_in_decls ;

void
c_finish_omp_flush (void)
{
  tree x;

  x = built_in_decls[BUILT_IN_SYNCHRONIZE];
  x = build_function_call_expr (x, ((void*)0));
  add_stmt (x);
}
