
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BIT_NOT_EXPR ;
 int TREE_TYPE (int ) ;
 int fold_build1 (int ,int ,int ) ;
 scalar_t__ integer_zerop (int ) ;
 int tree_floor_log2 (int ) ;
 scalar_t__ tree_int_cst_sgn (int ) ;

unsigned int
min_precision (tree value, int unsignedp)
{
  int log;






  if (tree_int_cst_sgn (value) < 0)
    value = fold_build1 (BIT_NOT_EXPR, TREE_TYPE (value), value);




  if (integer_zerop (value))
    log = 0;
  else
    log = tree_floor_log2 (value);

  return log + 1 + !unsignedp;
}
