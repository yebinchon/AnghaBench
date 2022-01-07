
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef int tree ;
struct TYPE_4__ {scalar_t__ length; } ;


 scalar_t__ is_gimple_min_invariant (int ) ;
 int value_exists_in_set_bitmap (TYPE_1__*,int ) ;

__attribute__((used)) static bool
set_contains_value (value_set_t set, tree val)
{

  if (is_gimple_min_invariant (val))
    return 1;

  if (!set || set->length == 0)
    return 0;

  return value_exists_in_set_bitmap (set, val);
}
