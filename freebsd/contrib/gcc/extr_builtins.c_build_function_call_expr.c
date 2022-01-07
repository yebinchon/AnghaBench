
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int CALL_EXPR ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int build1 (int ,int ,int ) ;
 int build_pointer_type (int ) ;
 int fold_build3 (int ,int ,int ,int ,int ) ;

tree
build_function_call_expr (tree fn, tree arglist)
{
  tree call_expr;

  call_expr = build1 (ADDR_EXPR, build_pointer_type (TREE_TYPE (fn)), fn);
  return fold_build3 (CALL_EXPR, TREE_TYPE (TREE_TYPE (fn)),
        call_expr, arglist, NULL_TREE);
}
