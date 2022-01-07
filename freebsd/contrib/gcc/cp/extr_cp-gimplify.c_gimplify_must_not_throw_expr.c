
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int NULL_TREE ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int append_to_statement_list (scalar_t__,scalar_t__*) ;
 int build_call (int ,int ) ;
 scalar_t__ gimple_build_eh_filter (scalar_t__,int ,int ) ;
 int gimplify_stmt (scalar_t__*) ;
 int terminate_node ;
 scalar_t__ voidify_wrapper_expr (scalar_t__,int *) ;

__attribute__((used)) static void
gimplify_must_not_throw_expr (tree *expr_p, tree *pre_p)
{
  tree stmt = *expr_p;
  tree temp = voidify_wrapper_expr (stmt, ((void*)0));
  tree body = TREE_OPERAND (stmt, 0);

  gimplify_stmt (&body);

  stmt = gimple_build_eh_filter (body, NULL_TREE,
     build_call (terminate_node, NULL_TREE));

  if (temp)
    {
      append_to_statement_list (stmt, pre_p);
      *expr_p = temp;
    }
  else
    *expr_p = stmt;
}
