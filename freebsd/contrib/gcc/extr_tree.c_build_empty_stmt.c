
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NOP_EXPR ;
 int build1 (int ,int ,int ) ;
 int size_zero_node ;
 int void_type_node ;

tree
build_empty_stmt (void)
{
  return build1 (NOP_EXPR, void_type_node, size_zero_node);
}
