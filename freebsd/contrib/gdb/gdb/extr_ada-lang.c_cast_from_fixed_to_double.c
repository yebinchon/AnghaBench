
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int DOUBLEST ;


 int VALUE_TYPE (struct value*) ;
 int ada_fixed_to_float (int ,int ) ;
 int builtin_type_double ;
 int value_as_long (struct value*) ;
 struct value* value_from_double (int ,int ) ;

__attribute__((used)) static struct value *
cast_from_fixed_to_double (struct value *arg)
{
  DOUBLEST val = ada_fixed_to_float (VALUE_TYPE (arg),
         value_as_long (arg));
  return value_from_double (builtin_type_double, val);
}
