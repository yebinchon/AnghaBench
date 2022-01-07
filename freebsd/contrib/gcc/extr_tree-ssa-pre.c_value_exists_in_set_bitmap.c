
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef int tree ;
struct TYPE_3__ {int values; } ;


 int VALUE_HANDLE_ID (int ) ;
 int bitmap_bit_p (int ,int ) ;

__attribute__((used)) static inline bool
value_exists_in_set_bitmap (value_set_t set, tree v)
{
  if (!set->values)
    return 0;

  return bitmap_bit_p (set->values, VALUE_HANDLE_ID (v));
}
