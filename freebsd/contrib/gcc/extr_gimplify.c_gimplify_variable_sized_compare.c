
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 size_t BUILT_IN_MEMCMP ;
 int GS_OK ;
 int * SUBSTITUTE_PLACEHOLDER_IN_EXPR (int *,int *) ;
 int TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int TREE_TYPE (int *) ;
 int * TYPE_SIZE_UNIT (int ) ;
 int * build2 (int ,int ,int *,int ) ;
 int * build_fold_addr_expr (int *) ;
 int * build_function_call_expr (int *,int *) ;
 int ** implicit_built_in_decls ;
 int integer_zero_node ;
 int * tree_cons (int *,int *,int *) ;
 int * unshare_expr (int *) ;

__attribute__((used)) static enum gimplify_status
gimplify_variable_sized_compare (tree *expr_p)
{
  tree op0 = TREE_OPERAND (*expr_p, 0);
  tree op1 = TREE_OPERAND (*expr_p, 1);
  tree args, t, dest;

  t = TYPE_SIZE_UNIT (TREE_TYPE (op0));
  t = unshare_expr (t);
  t = SUBSTITUTE_PLACEHOLDER_IN_EXPR (t, op0);
  args = tree_cons (((void*)0), t, ((void*)0));
  t = build_fold_addr_expr (op1);
  args = tree_cons (((void*)0), t, args);
  dest = build_fold_addr_expr (op0);
  args = tree_cons (((void*)0), dest, args);
  t = implicit_built_in_decls[BUILT_IN_MEMCMP];
  t = build_function_call_expr (t, args);
  *expr_p
    = build2 (TREE_CODE (*expr_p), TREE_TYPE (*expr_p), t, integer_zero_node);

  return GS_OK;
}
