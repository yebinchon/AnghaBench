
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ tree_int_cst_lt (int ,int ) ;

int
tree_int_cst_compare (tree t1, tree t2)
{
  if (tree_int_cst_lt (t1, t2))
    return -1;
  else if (tree_int_cst_lt (t2, t1))
    return 1;
  else
    return 0;
}
