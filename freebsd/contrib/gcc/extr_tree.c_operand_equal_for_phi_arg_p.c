
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int operand_equal_p (scalar_t__,scalar_t__,int ) ;

int
operand_equal_for_phi_arg_p (tree arg0, tree arg1)
{
  if (arg0 == arg1)
    return 1;
  if (TREE_CODE (arg0) == SSA_NAME || TREE_CODE (arg1) == SSA_NAME)
    return 0;
  return operand_equal_p (arg0, arg1, 0);
}
