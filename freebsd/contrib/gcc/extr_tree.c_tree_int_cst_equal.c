
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_INT_CST_HIGH (scalar_t__) ;
 scalar_t__ TREE_INT_CST_LOW (scalar_t__) ;

int
tree_int_cst_equal (tree t1, tree t2)
{
  if (t1 == t2)
    return 1;

  if (t1 == 0 || t2 == 0)
    return 0;

  if (TREE_CODE (t1) == INTEGER_CST
      && TREE_CODE (t2) == INTEGER_CST
      && TREE_INT_CST_LOW (t1) == TREE_INT_CST_LOW (t2)
      && TREE_INT_CST_HIGH (t1) == TREE_INT_CST_HIGH (t2))
    return 1;

  return 0;
}
