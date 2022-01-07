
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_FIELD_BITSIZE (struct type*,int ) ;
 int VALUE_TYPE (struct value*) ;
 struct value* ada_coerce_to_simple_array (struct value*) ;
 struct type* check_typedef (int ) ;
 int error (char*,int) ;
 int value_pos_atr (struct value*) ;
 struct value* value_subscript (struct value*,int ) ;
 struct value* value_subscript_packed (struct value*,int,struct value**) ;

struct value *
ada_value_subscript (struct value *arr, int arity, struct value **ind)
{
  int k;
  struct value *elt;
  struct type *elt_type;

  elt = ada_coerce_to_simple_array (arr);

  elt_type = check_typedef (VALUE_TYPE (elt));
  if (TYPE_CODE (elt_type) == TYPE_CODE_ARRAY
      && TYPE_FIELD_BITSIZE (elt_type, 0) > 0)
    return value_subscript_packed (elt, arity, ind);

  for (k = 0; k < arity; k += 1)
    {
      if (TYPE_CODE (elt_type) != TYPE_CODE_ARRAY)
 error ("too many subscripts (%d expected)", k);
      elt = value_subscript (elt, value_pos_atr (ind[k]));
    }
  return elt;
}
