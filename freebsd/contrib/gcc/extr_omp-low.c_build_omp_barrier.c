
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_GOMP_BARRIER ;
 int build_function_call_expr (int ,int *) ;
 int * built_in_decls ;
 int gimplify_and_add (int ,int *) ;

__attribute__((used)) static void
build_omp_barrier (tree *stmt_list)
{
  tree t;

  t = built_in_decls[BUILT_IN_GOMP_BARRIER];
  t = build_function_call_expr (t, ((void*)0));
  gimplify_and_add (t, stmt_list);
}
