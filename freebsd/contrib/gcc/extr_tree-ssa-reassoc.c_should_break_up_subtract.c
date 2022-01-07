
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ PLUS_EXPR ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int get_single_immediate_use (int ) ;
 scalar_t__ is_reassociable_op (int ,scalar_t__) ;

__attribute__((used)) static bool
should_break_up_subtract (tree stmt)
{

  tree lhs = TREE_OPERAND (stmt, 0);
  tree rhs = TREE_OPERAND (stmt, 1);
  tree binlhs = TREE_OPERAND (rhs, 0);
  tree binrhs = TREE_OPERAND (rhs, 1);
  tree immusestmt;

  if (TREE_CODE (binlhs) == SSA_NAME
      && is_reassociable_op (SSA_NAME_DEF_STMT (binlhs), PLUS_EXPR))
    return 1;

  if (TREE_CODE (binrhs) == SSA_NAME
      && is_reassociable_op (SSA_NAME_DEF_STMT (binrhs), PLUS_EXPR))
    return 1;

  if (TREE_CODE (lhs) == SSA_NAME
      && (immusestmt = get_single_immediate_use (lhs))
      && TREE_CODE (TREE_OPERAND (immusestmt, 1)) == PLUS_EXPR)
    return 1;
  return 0;

}
