
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_GOMP_SINGLE_START ;
 int COND_EXPR ;
 int OMP_SINGLE_BODY (int ) ;
 int build3 (int ,int ,int ,int ,int *) ;
 int build_function_call_expr (int ,int *) ;
 int * built_in_decls ;
 int gimplify_and_add (int ,int *) ;
 int void_type_node ;

__attribute__((used)) static void
lower_omp_single_simple (tree single_stmt, tree *pre_p)
{
  tree t;

  t = built_in_decls[BUILT_IN_GOMP_SINGLE_START];
  t = build_function_call_expr (t, ((void*)0));
  t = build3 (COND_EXPR, void_type_node, t,
       OMP_SINGLE_BODY (single_stmt), ((void*)0));
  gimplify_and_add (t, pre_p);
}
