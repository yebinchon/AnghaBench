
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* bitmap_set_t ;
struct TYPE_3__ {int expressions; } ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_VERSION (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int bitmap_bit_p (int ,int ) ;
 int get_value_handle (int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;

__attribute__((used)) static bool
bitmap_set_contains (bitmap_set_t set, tree expr)
{

  if (is_gimple_min_invariant (get_value_handle (expr)))
    return 1;


  if (TREE_CODE (expr) != SSA_NAME)
    return 0;
  return bitmap_bit_p (set->expressions, SSA_NAME_VERSION (expr));
}
