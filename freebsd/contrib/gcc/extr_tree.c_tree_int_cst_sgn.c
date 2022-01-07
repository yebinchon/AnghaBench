
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_INT_CST_HIGH (int ) ;
 scalar_t__ TREE_INT_CST_LOW (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;

int
tree_int_cst_sgn (tree t)
{
  if (TREE_INT_CST_LOW (t) == 0 && TREE_INT_CST_HIGH (t) == 0)
    return 0;
  else if (TYPE_UNSIGNED (TREE_TYPE (t)))
    return 1;
  else if (TREE_INT_CST_HIGH (t) < 0)
    return -1;
  else
    return 1;
}
