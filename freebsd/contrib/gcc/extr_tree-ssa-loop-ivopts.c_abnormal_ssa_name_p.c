
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_OCCURS_IN_ABNORMAL_PHI (int ) ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static bool
abnormal_ssa_name_p (tree exp)
{
  if (!exp)
    return 0;

  if (TREE_CODE (exp) != SSA_NAME)
    return 0;

  return SSA_NAME_OCCURS_IN_ABNORMAL_PHI (exp) != 0;
}
