
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 scalar_t__ VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 struct value* ada_to_fixed_value (int ,int ,scalar_t__,struct value*) ;
 struct value* unwrap_value (int ) ;
 int value_ind (struct value*) ;

struct value *
ada_value_ind (struct value *val0)
{
  struct value *val = unwrap_value (value_ind (val0));
  return ada_to_fixed_value (VALUE_TYPE (val), 0,
        VALUE_ADDRESS (val) + VALUE_OFFSET (val), val);
}
