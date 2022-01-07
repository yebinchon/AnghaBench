
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ HONOR_SIGNED_ZEROS (int ) ;
 scalar_t__ REAL_CST ;
 scalar_t__ REAL_VALUES_EQUAL (int ,int ) ;
 scalar_t__ SSA_NAME ;
 int * SSA_NAME_VALUE (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 scalar_t__ TREE_INVARIANT (int *) ;
 int TREE_REAL_CST (int *) ;
 int TREE_TYPE (int *) ;
 int TYPE_MODE (int ) ;
 scalar_t__ VALUE_HANDLE ;
 int dconst0 ;
 scalar_t__ loop_depth_of_name (int *) ;
 int record_const_or_copy_1 (int *,int *,int *) ;

__attribute__((used)) static void
record_equality (tree x, tree y)
{
  tree prev_x = ((void*)0), prev_y = ((void*)0);

  if (TREE_CODE (x) == SSA_NAME)
    prev_x = SSA_NAME_VALUE (x);
  if (TREE_CODE (y) == SSA_NAME)
    prev_y = SSA_NAME_VALUE (y);





  if (TREE_INVARIANT (y))
    ;
  else if (TREE_INVARIANT (x) || (loop_depth_of_name (x) <= loop_depth_of_name (y)))
    prev_x = x, x = y, y = prev_x, prev_x = prev_y;
  else if (prev_x && TREE_INVARIANT (prev_x))
    x = y, y = prev_x, prev_x = prev_y;
  else if (prev_y && TREE_CODE (prev_y) != VALUE_HANDLE)
    y = prev_y;


  if (TREE_CODE (x) != SSA_NAME)
    return;





  if (HONOR_SIGNED_ZEROS (TYPE_MODE (TREE_TYPE (x)))
      && (TREE_CODE (y) != REAL_CST
   || REAL_VALUES_EQUAL (dconst0, TREE_REAL_CST (y))))
    return;

  record_const_or_copy_1 (x, y, prev_x);
}
