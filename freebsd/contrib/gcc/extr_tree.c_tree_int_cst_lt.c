
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int INT_CST_LT (scalar_t__,scalar_t__) ;
 int INT_CST_LT_UNSIGNED (scalar_t__,scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int tree_int_cst_sgn (scalar_t__) ;

int
tree_int_cst_lt (tree t1, tree t2)
{
  if (t1 == t2)
    return 0;

  if (TYPE_UNSIGNED (TREE_TYPE (t1)) != TYPE_UNSIGNED (TREE_TYPE (t2)))
    {
      int t1_sgn = tree_int_cst_sgn (t1);
      int t2_sgn = tree_int_cst_sgn (t2);

      if (t1_sgn < t2_sgn)
 return 1;
      else if (t1_sgn > t2_sgn)
 return 0;



    }
  else if (!TYPE_UNSIGNED (TREE_TYPE (t1)))
    return INT_CST_LT (t1, t2);

  return INT_CST_LT_UNSIGNED (t1, t2);
}
