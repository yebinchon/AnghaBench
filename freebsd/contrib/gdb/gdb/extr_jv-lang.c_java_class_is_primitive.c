
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int CORE_ADDR ;


 int value_as_address (struct value*) ;
 struct value* value_struct_elt (struct value**,int *,char*,int *,char*) ;

__attribute__((used)) static int
java_class_is_primitive (struct value *clas)
{
  struct value *vtable = value_struct_elt (&clas, ((void*)0), "vtable", ((void*)0), "struct");
  CORE_ADDR i = value_as_address (vtable);
  return (int) (i & 0x7fffffff) == (int) 0x7fffffff;
}
