
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 struct type* VALUE_TYPE (struct value*) ;
 scalar_t__ is_thick_pntr (struct type*) ;
 scalar_t__ is_thin_pntr (struct type*) ;
 struct value* thin_data_pntr (struct value*) ;
 struct value* value_struct_elt (struct value**,int *,char*,int *,char*) ;

__attribute__((used)) static struct value *
desc_data (struct value *arr)
{
  struct type *type = VALUE_TYPE (arr);
  if (is_thin_pntr (type))
    return thin_data_pntr (arr);
  else if (is_thick_pntr (type))
    return value_struct_elt (&arr, ((void*)0), "P_ARRAY", ((void*)0),
        "Bad GNAT array descriptor");
  else
    return ((void*)0);
}
