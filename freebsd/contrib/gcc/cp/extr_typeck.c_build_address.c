
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int TREE_TYPE (int ) ;
 int build1 (int ,int ,int ) ;
 int build_pointer_type (int ) ;
 int cxx_mark_addressable (int ) ;
 int error_mark_node ;
 scalar_t__ error_operand_p (int ) ;

tree
build_address (tree t)
{
  tree addr;

  if (error_operand_p (t) || !cxx_mark_addressable (t))
    return error_mark_node;

  addr = build1 (ADDR_EXPR, build_pointer_type (TREE_TYPE (t)), t);

  return addr;
}
