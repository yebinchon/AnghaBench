
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_INT_CST_HIGH (int ) ;
 scalar_t__ TREE_INT_CST_LOW (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_IS_SIZETYPE (int ) ;
 int TYPE_UNSIGNED (int ) ;

int
host_integerp (tree t, int pos)
{
  return (TREE_CODE (t) == INTEGER_CST
   && ((TREE_INT_CST_HIGH (t) == 0
        && (HOST_WIDE_INT) TREE_INT_CST_LOW (t) >= 0)
       || (! pos && TREE_INT_CST_HIGH (t) == -1
    && (HOST_WIDE_INT) TREE_INT_CST_LOW (t) < 0
    && (!TYPE_UNSIGNED (TREE_TYPE (t))
        || TYPE_IS_SIZETYPE (TREE_TYPE (t))))
       || (pos && TREE_INT_CST_HIGH (t) == 0)));
}
