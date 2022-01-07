
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int * bound_name ;
 struct value* value_struct_elt (struct value**,int *,int ,int *,char*) ;

__attribute__((used)) static struct value *
desc_one_bound (struct value *bounds, int i, int which)
{
  return value_struct_elt (&bounds, ((void*)0), bound_name[2 * i + which - 2], ((void*)0),
      "Bad GNAT array descriptor bounds");
}
