
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int VALUE_TYPE (struct value*) ;
 struct value* ada_coerce_ref (struct value*) ;
 struct value* ada_search_struct_field (char*,struct value*,int ,struct type*) ;
 struct value* ada_value_ind (struct value*) ;
 struct type* check_typedef (int ) ;
 int error (char*,char*) ;

struct value *
ada_value_struct_elt (struct value *arg, char *name, char *err)
{
  struct type *t;
  struct value *v;

  arg = ada_coerce_ref (arg);
  t = check_typedef (VALUE_TYPE (arg));



  while (TYPE_CODE (t) == TYPE_CODE_PTR || TYPE_CODE (t) == TYPE_CODE_REF)
    {
      arg = ada_value_ind (arg);
      t = check_typedef (VALUE_TYPE (arg));
    }

  if (TYPE_CODE (t) != TYPE_CODE_STRUCT && TYPE_CODE (t) != TYPE_CODE_UNION)
    error ("Attempt to extract a component of a value that is not a %s.",
    err);

  v = ada_search_struct_field (name, arg, 0, t);
  if (v == ((void*)0))
    error ("There is no member named %s.", name);

  return v;
}
