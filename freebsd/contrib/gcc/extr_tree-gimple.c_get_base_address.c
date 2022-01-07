
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONSTRUCTOR ;
 scalar_t__ INDIRECT_REF_P (int ) ;
 int NULL_TREE ;
 scalar_t__ SSA_VAR_P (int ) ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ handled_component_p (int ) ;

tree
get_base_address (tree t)
{
  while (handled_component_p (t))
    t = TREE_OPERAND (t, 0);

  if (SSA_VAR_P (t)
      || TREE_CODE (t) == STRING_CST
      || TREE_CODE (t) == CONSTRUCTOR
      || INDIRECT_REF_P (t))
    return t;
  else
    return NULL_TREE;
}
