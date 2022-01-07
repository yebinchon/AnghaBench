
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NOP_EXPR ;
 int TREE_TYPE (int ) ;
 int build_modify_expr (int ,int ,int ) ;
 int convert (int ,int ) ;
 int get_guard_bits (int ) ;
 int integer_one_node ;
 int same_type_p (int ,int ) ;

tree
set_guard (tree guard)
{
  tree guard_init;


  guard = get_guard_bits (guard);
  guard_init = integer_one_node;
  if (!same_type_p (TREE_TYPE (guard_init), TREE_TYPE (guard)))
    guard_init = convert (TREE_TYPE (guard), guard_init);
  return build_modify_expr (guard, NOP_EXPR, guard_init);
}
