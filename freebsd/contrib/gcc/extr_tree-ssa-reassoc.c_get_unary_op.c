
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ MODIFY_EXPR ;
 int NULL_TREE ;
 int SSA_NAME_DEF_STMT (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;

__attribute__((used)) static tree
get_unary_op (tree name, enum tree_code opcode)
{
  tree stmt = SSA_NAME_DEF_STMT (name);
  tree rhs;

  if (TREE_CODE (stmt) != MODIFY_EXPR)
    return NULL_TREE;

  rhs = TREE_OPERAND (stmt, 1);
  if (TREE_CODE (rhs) == opcode)
    return TREE_OPERAND (rhs, 0);
  return NULL_TREE;
}
