
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;
typedef int DOUBLEST ;


 struct type* VALUE_TYPE (struct value*) ;
 int ada_fixed_to_float (struct type*,int ) ;
 int ada_float_to_fixed (struct type*,int ) ;
 scalar_t__ ada_is_fixed_point_type (struct type*) ;
 int builtin_type_double ;
 int value_as_double (int ) ;
 int value_as_long (struct value*) ;
 int value_cast (int ,int ) ;
 int value_copy (struct value*) ;
 struct value* value_from_longest (struct type*,int ) ;

__attribute__((used)) static struct value *
cast_to_fixed (struct type *type, struct value *arg)
{
  LONGEST val;

  if (type == VALUE_TYPE (arg))
    return arg;
  else if (ada_is_fixed_point_type (VALUE_TYPE (arg)))
    val = ada_float_to_fixed (type,
         ada_fixed_to_float (VALUE_TYPE (arg),
        value_as_long (arg)));
  else
    {
      DOUBLEST argd =
 value_as_double (value_cast (builtin_type_double, value_copy (arg)));
      val = ada_float_to_fixed (type, argd);
    }

  return value_from_longest (type, val);
}
