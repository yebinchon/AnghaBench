
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static tree
get_ssa_base (tree expr)
{
  if (TREE_CODE (expr) == SSA_NAME)
    return SSA_NAME_VAR (expr);
  else
    return expr;
}
