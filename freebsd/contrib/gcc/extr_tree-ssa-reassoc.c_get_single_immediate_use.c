
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int use_operand_p ;
typedef int tree ;


 scalar_t__ MODIFY_EXPR ;
 int NULL_TREE ;
 scalar_t__ RETURN_EXPR ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ single_imm_use (int ,int *,int *) ;

__attribute__((used)) static tree
get_single_immediate_use (tree lhs)
{
  use_operand_p immuse;
  tree immusestmt;

  if (TREE_CODE (lhs) == SSA_NAME
      && single_imm_use (lhs, &immuse, &immusestmt))
    {
      if (TREE_CODE (immusestmt) == RETURN_EXPR)
 immusestmt = TREE_OPERAND (immusestmt, 0);
      if (TREE_CODE (immusestmt) == MODIFY_EXPR)
 return immusestmt;
    }
  return NULL_TREE;
}
