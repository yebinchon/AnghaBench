
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int build_target_expr_with_type (int ,int ) ;

tree
get_target_expr (tree init)
{
  return build_target_expr_with_type (init, TREE_TYPE (init));
}
