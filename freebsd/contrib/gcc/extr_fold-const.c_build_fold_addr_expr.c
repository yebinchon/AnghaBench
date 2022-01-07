
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int build_fold_addr_expr_with_type (int ,int ) ;
 int build_pointer_type (int ) ;

tree
build_fold_addr_expr (tree t)
{
  return build_fold_addr_expr_with_type (t, build_pointer_type (TREE_TYPE (t)));
}
