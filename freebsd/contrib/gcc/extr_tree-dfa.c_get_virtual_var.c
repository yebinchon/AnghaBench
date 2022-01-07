
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ IMAGPART_EXPR ;
 scalar_t__ REALPART_EXPR ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 int SSA_VAR_P (int ) ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ handled_component_p (int ) ;
 int is_gimple_reg (int ) ;

tree
get_virtual_var (tree var)
{
  STRIP_NOPS (var);

  if (TREE_CODE (var) == SSA_NAME)
    var = SSA_NAME_VAR (var);

  while (TREE_CODE (var) == REALPART_EXPR || TREE_CODE (var) == IMAGPART_EXPR
  || handled_component_p (var))
    var = TREE_OPERAND (var, 0);




  gcc_assert (SSA_VAR_P (var));
  gcc_assert (!is_gimple_reg (var));

  return var;
}
