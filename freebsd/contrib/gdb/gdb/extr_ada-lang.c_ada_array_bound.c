
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 struct type* VALUE_TYPE (struct value*) ;
 int ada_array_bound_from_type (struct type*,int,int,struct type**) ;
 scalar_t__ ada_is_packed_array_type (struct type*) ;
 scalar_t__ ada_is_simple_array (struct type*) ;
 struct value* decode_packed_array (struct value*) ;
 int desc_bounds (struct value*) ;
 struct value* desc_one_bound (int ,int,int) ;
 struct value* value_from_longest (struct type*,int ) ;

struct value *
ada_array_bound (struct value *arr, int n, int which)
{
  struct type *arr_type = VALUE_TYPE (arr);

  if (ada_is_packed_array_type (arr_type))
    return ada_array_bound (decode_packed_array (arr), n, which);
  else if (ada_is_simple_array (arr_type))
    {
      struct type *type;
      LONGEST v = ada_array_bound_from_type (arr_type, n, which, &type);
      return value_from_longest (type, v);
    }
  else
    return desc_one_bound (desc_bounds (arr), n, which);
}
