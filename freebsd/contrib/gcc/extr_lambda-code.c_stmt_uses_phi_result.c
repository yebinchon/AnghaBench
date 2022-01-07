
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ SINGLE_SSA_TREE_OPERAND (scalar_t__,int ) ;
 int SSA_OP_USE ;

__attribute__((used)) static bool
stmt_uses_phi_result (tree stmt, tree phi_result)
{
  tree use = SINGLE_SSA_TREE_OPERAND (stmt, SSA_OP_USE);



  return (use == phi_result);
}
