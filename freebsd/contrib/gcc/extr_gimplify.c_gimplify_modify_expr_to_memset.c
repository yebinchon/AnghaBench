
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 size_t BUILT_IN_MEMSET ;
 int GS_OK ;
 int INDIRECT_REF ;
 int NOP_EXPR ;
 int * TREE_OPERAND (int *,int ) ;
 int TREE_TYPE (int *) ;
 int * build1 (int ,int ,int *) ;
 int * build_fold_addr_expr (int *) ;
 int * build_function_call_expr (int *,int *) ;
 int ** implicit_built_in_decls ;
 int * integer_zero_node ;
 int * tree_cons (int *,int *,int *) ;

__attribute__((used)) static enum gimplify_status
gimplify_modify_expr_to_memset (tree *expr_p, tree size, bool want_value)
{
  tree args, t, to, to_ptr;

  to = TREE_OPERAND (*expr_p, 0);

  args = tree_cons (((void*)0), size, ((void*)0));

  args = tree_cons (((void*)0), integer_zero_node, args);

  to_ptr = build_fold_addr_expr (to);
  args = tree_cons (((void*)0), to_ptr, args);
  t = implicit_built_in_decls[BUILT_IN_MEMSET];
  t = build_function_call_expr (t, args);

  if (want_value)
    {
      t = build1 (NOP_EXPR, TREE_TYPE (to_ptr), t);
      t = build1 (INDIRECT_REF, TREE_TYPE (to), t);
    }

  *expr_p = t;
  return GS_OK;
}
