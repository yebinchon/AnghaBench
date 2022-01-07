
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int VALUE_TYPE (struct value*) ;
 struct value* ada_coerce_to_simple_array_ptr (struct value*) ;
 scalar_t__ ada_is_array_descriptor (int ) ;
 scalar_t__ ada_is_packed_array_type (int ) ;
 struct value* decode_packed_array (struct value*) ;
 int error (char*) ;
 struct value* value_ind (struct value*) ;

struct value *
ada_coerce_to_simple_array (struct value *arr)
{
  if (ada_is_array_descriptor (VALUE_TYPE (arr)))
    {
      struct value *arrVal = ada_coerce_to_simple_array_ptr (arr);
      if (arrVal == ((void*)0))
 error ("Bounds unavailable for null array pointer.");
      return value_ind (arrVal);
    }
  else if (ada_is_packed_array_type (VALUE_TYPE (arr)))
    return decode_packed_array (arr);
  else
    return arr;
}
