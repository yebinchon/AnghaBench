
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int VALUE_TYPE (struct value*) ;
 scalar_t__ ada_is_array_descriptor (int ) ;
 scalar_t__ ada_is_packed_array_type (int ) ;
 struct type* ada_type_of_array (struct value*,int) ;
 struct value* decode_packed_array (struct value*) ;
 int desc_data (struct value*) ;
 struct value* value_cast (struct type*,int ) ;
 int value_copy (int ) ;

struct value *
ada_coerce_to_simple_array_ptr (struct value *arr)
{
  if (ada_is_array_descriptor (VALUE_TYPE (arr)))
    {
      struct type *arrType = ada_type_of_array (arr, 1);
      if (arrType == ((void*)0))
 return ((void*)0);
      return value_cast (arrType, value_copy (desc_data (arr)));
    }
  else if (ada_is_packed_array_type (VALUE_TYPE (arr)))
    return decode_packed_array (arr);
  else
    return arr;
}
