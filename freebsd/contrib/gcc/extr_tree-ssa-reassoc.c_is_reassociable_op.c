
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int IS_EMPTY_STMT (int ) ;
 scalar_t__ MODIFY_EXPR ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 scalar_t__ has_single_use (int ) ;

__attribute__((used)) static bool
is_reassociable_op (tree stmt, enum tree_code code)
{
  if (!IS_EMPTY_STMT (stmt)
      && TREE_CODE (stmt) == MODIFY_EXPR
      && TREE_CODE (TREE_OPERAND (stmt, 1)) == code
      && has_single_use (TREE_OPERAND (stmt, 0)))
    return 1;
  return 0;
}
