
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ MINUS_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ PHI_ARG_DEF (scalar_t__,unsigned int) ;
 scalar_t__ PHI_NODE ;
 scalar_t__ PHI_NUM_ARGS (scalar_t__) ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_DEF_STMT (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;

__attribute__((used)) static bool
simple_iv_increment_p (tree stmt)
{
  tree lhs, rhs, preinc, phi;
  unsigned i;

  if (TREE_CODE (stmt) != MODIFY_EXPR)
    return 0;

  lhs = TREE_OPERAND (stmt, 0);
  if (TREE_CODE (lhs) != SSA_NAME)
    return 0;

  rhs = TREE_OPERAND (stmt, 1);

  if (TREE_CODE (rhs) != PLUS_EXPR
      && TREE_CODE (rhs) != MINUS_EXPR)
    return 0;

  preinc = TREE_OPERAND (rhs, 0);
  if (TREE_CODE (preinc) != SSA_NAME)
    return 0;

  phi = SSA_NAME_DEF_STMT (preinc);
  if (TREE_CODE (phi) != PHI_NODE)
    return 0;

  for (i = 0; i < (unsigned) PHI_NUM_ARGS (phi); i++)
    if (PHI_ARG_DEF (phi, i) == lhs)
      return 1;

  return 0;
}
