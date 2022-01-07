
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 struct type* VALUE_TYPE (struct value*) ;
 struct value* coerce_unspec_val_to_type (struct value*,int ,struct type*) ;
 int static_unwrap_type (struct type*) ;
 struct type* to_static_fixed_type (int ) ;

struct value *
ada_to_static_fixed_value (struct value *val)
{
  struct type *type =
    to_static_fixed_type (static_unwrap_type (VALUE_TYPE (val)));
  if (type == VALUE_TYPE (val))
    return val;
  else
    return coerce_unspec_val_to_type (val, 0, type);
}
