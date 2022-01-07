
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_LENGTH (int ) ;
 int TYPE_TARGET_TYPE (int ) ;
 int VALUE_TYPE (struct value*) ;
 int get_java_object_type () ;
 int value_as_address (struct value*) ;
 struct value* value_at (int ,int ,int *) ;
 struct value* value_struct_elt (struct value**,int *,char*,int *,char*) ;

struct value *
java_class_from_object (struct value *obj_val)
{


  struct value *vtable_val;

  if (TYPE_CODE (VALUE_TYPE (obj_val)) == TYPE_CODE_PTR
      && TYPE_LENGTH (TYPE_TARGET_TYPE (VALUE_TYPE (obj_val))) == 0)
    obj_val = value_at (get_java_object_type (),
   value_as_address (obj_val), ((void*)0));

  vtable_val = value_struct_elt (&obj_val, ((void*)0), "vtable", ((void*)0), "structure");
  return value_struct_elt (&vtable_val, ((void*)0), "class", ((void*)0), "structure");
}
