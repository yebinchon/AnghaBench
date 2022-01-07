
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int SSA_VAR_P (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ handled_component_p (int ) ;

__attribute__((used)) static bool
var_decl_component_p (tree var)
{
  tree inner = var;
  while (handled_component_p (inner))
    inner = TREE_OPERAND (inner, 0);
  return SSA_VAR_P (inner);
}
