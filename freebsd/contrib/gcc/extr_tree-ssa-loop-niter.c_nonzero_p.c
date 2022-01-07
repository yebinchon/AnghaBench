
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_INT_CST_HIGH (int ) ;
 scalar_t__ TREE_INT_CST_LOW (int ) ;

__attribute__((used)) static bool
nonzero_p (tree arg)
{
  if (!arg)
    return 0;

  if (TREE_CODE (arg) != INTEGER_CST)
    return 0;

  return (TREE_INT_CST_LOW (arg) != 0 || TREE_INT_CST_HIGH (arg) != 0);
}
