
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 size_t BUILT_IN_GOMP_ATOMIC_END ;
 size_t BUILT_IN_GOMP_ATOMIC_START ;
 int GS_ALL_DONE ;
 int MODIFY_EXPR ;
 int * build2 (int ,int ,int *,int *) ;
 int * build_fold_indirect_ref (int *) ;
 int * build_function_call_expr (int *,int *) ;
 int ** built_in_decls ;
 int gimplify_and_add (int *,int **) ;
 int void_type_node ;

__attribute__((used)) static enum gimplify_status
gimplify_omp_atomic_mutex (tree *expr_p, tree *pre_p, tree addr, tree rhs)
{
  tree t;

  t = built_in_decls[BUILT_IN_GOMP_ATOMIC_START];
  t = build_function_call_expr (t, ((void*)0));
  gimplify_and_add (t, pre_p);

  t = build_fold_indirect_ref (addr);
  t = build2 (MODIFY_EXPR, void_type_node, t, rhs);
  gimplify_and_add (t, pre_p);

  t = built_in_decls[BUILT_IN_GOMP_ATOMIC_END];
  t = build_function_call_expr (t, ((void*)0));
  gimplify_and_add (t, pre_p);

  *expr_p = ((void*)0);
  return GS_ALL_DONE;
}
