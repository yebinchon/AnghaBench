
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* guard_mask_bit ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;


 int BIT_AND_EXPR ;
 int EQ_EXPR ;
 int TREE_TYPE (int ) ;
 int convert (int ,int ) ;
 int cp_build_binary_op (int ,int ,int ) ;
 int get_guard_bits (int ) ;
 int integer_one_node ;
 int integer_zero_node ;
 int same_type_p (int ,int ) ;
 scalar_t__ stub1 () ;
 TYPE_2__ targetm ;

tree
get_guard_cond (tree guard)
{
  tree guard_value;


  guard = get_guard_bits (guard);


  if (targetm.cxx.guard_mask_bit ())
    {
      guard_value = integer_one_node;
      if (!same_type_p (TREE_TYPE (guard_value), TREE_TYPE (guard)))
 guard_value = convert (TREE_TYPE (guard), guard_value);
 guard = cp_build_binary_op (BIT_AND_EXPR, guard, guard_value);
    }

  guard_value = integer_zero_node;
  if (!same_type_p (TREE_TYPE (guard_value), TREE_TYPE (guard)))
    guard_value = convert (TREE_TYPE (guard), guard_value);
  return cp_build_binary_op (EQ_EXPR, guard, guard_value);
}
