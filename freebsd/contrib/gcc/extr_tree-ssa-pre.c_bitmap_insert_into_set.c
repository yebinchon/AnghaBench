
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* bitmap_set_t ;
struct TYPE_3__ {int expressions; int values; } ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_VERSION (int) ;
 scalar_t__ TREE_CODE (int) ;
 int VALUE_HANDLE_ID (int) ;
 int bitmap_set_bit (int ,int ) ;
 int gcc_assert (int) ;
 int get_value_handle (int) ;
 int is_gimple_min_invariant (int) ;

__attribute__((used)) static void
bitmap_insert_into_set (bitmap_set_t set, tree expr)
{
  tree val;

  gcc_assert (TREE_CODE (expr) == SSA_NAME);
  val = get_value_handle (expr);

  gcc_assert (val);
  if (!is_gimple_min_invariant (val))
  {
    bitmap_set_bit (set->values, VALUE_HANDLE_ID (val));
    bitmap_set_bit (set->expressions, SSA_NAME_VERSION (expr));
  }
}
