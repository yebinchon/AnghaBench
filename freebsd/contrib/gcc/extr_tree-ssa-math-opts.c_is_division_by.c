
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ MODIFY_EXPR ;
 scalar_t__ RDIV_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;

__attribute__((used)) static inline bool
is_division_by (tree use_stmt, tree def)
{
  return TREE_CODE (use_stmt) == MODIFY_EXPR
  && TREE_CODE (TREE_OPERAND (use_stmt, 1)) == RDIV_EXPR
  && TREE_OPERAND (TREE_OPERAND (use_stmt, 1), 1) == def;
}
