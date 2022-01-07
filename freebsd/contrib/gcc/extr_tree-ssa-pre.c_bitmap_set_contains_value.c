
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* bitmap_set_t ;
struct TYPE_3__ {int values; } ;


 int VALUE_HANDLE_ID (int ) ;
 int bitmap_bit_p (int ,int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;

__attribute__((used)) static bool
bitmap_set_contains_value (bitmap_set_t set, tree val)
{
  if (is_gimple_min_invariant (val))
    return 1;
  return bitmap_bit_p (set->values, VALUE_HANDLE_ID (val));
}
