
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_VALUE (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int record_const_or_copy_1 (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
record_const_or_copy (tree x, tree y)
{
  tree prev_x = SSA_NAME_VALUE (x);

  if (TREE_CODE (y) == SSA_NAME)
    {
      tree tmp = SSA_NAME_VALUE (y);
      if (tmp)
 y = tmp;
    }

  record_const_or_copy_1 (x, y, prev_x);
}
