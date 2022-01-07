
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;


 size_t BUILT_IN_MEMCPY ;
 int GS_OK ;
 int INDIRECT_REF ;
 int NOP_EXPR ;
 int * TREE_OPERAND (int *,int) ;
 int TREE_TYPE (int *) ;
 int * build1 (int ,int ,int *) ;
 int * build_fold_addr_expr (int *) ;
 int * build_function_call_expr (int *,int *) ;
 int ** implicit_built_in_decls ;
 int * tree_cons (int *,int *,int *) ;

__attribute__((used)) static enum gimplify_status
gimplify_modify_expr_to_memcpy (tree *expr_p, tree size, bool want_value)
{
  tree args, t, to, to_ptr, from;

  to = TREE_OPERAND (*expr_p, 0);
  from = TREE_OPERAND (*expr_p, 1);

  args = tree_cons (((void*)0), size, ((void*)0));

  t = build_fold_addr_expr (from);
  args = tree_cons (((void*)0), t, args);

  to_ptr = build_fold_addr_expr (to);
  args = tree_cons (((void*)0), to_ptr, args);
  t = implicit_built_in_decls[BUILT_IN_MEMCPY];
  t = build_function_call_expr (t, args);

  if (want_value)
    {
      t = build1 (NOP_EXPR, TREE_TYPE (to_ptr), t);
      t = build1 (INDIRECT_REF, TREE_TYPE (to), t);
    }

  *expr_p = t;
  return GS_OK;
}
