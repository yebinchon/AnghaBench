
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef scalar_t__ LONGEST ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_LENGTH (struct type*) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 struct type* check_typedef (int ) ;
 struct type* desc_bounds_type (int ) ;
 int error (char*) ;
 scalar_t__ is_thick_pntr (struct type*) ;
 scalar_t__ is_thin_pntr (struct type*) ;
 int lookup_pointer_type (struct type*) ;
 int thin_descriptor_type (struct type*) ;
 scalar_t__ value_as_long (struct value*) ;
 struct value* value_from_longest (int ,scalar_t__) ;
 struct value* value_struct_elt (struct value**,int *,char*,int *,char*) ;

__attribute__((used)) static struct value *
desc_bounds (struct value *arr)
{
  struct type *type = check_typedef (VALUE_TYPE (arr));
  if (is_thin_pntr (type))
    {
      struct type *bounds_type =
 desc_bounds_type (thin_descriptor_type (type));
      LONGEST addr;

      if (desc_bounds_type == ((void*)0))
 error ("Bad GNAT array descriptor");




      if (TYPE_CODE (type) == TYPE_CODE_PTR)
 addr = value_as_long (arr);
      else
 addr = VALUE_ADDRESS (arr) + VALUE_OFFSET (arr);

      return
 value_from_longest (lookup_pointer_type (bounds_type),
       addr - TYPE_LENGTH (bounds_type));
    }

  else if (is_thick_pntr (type))
    return value_struct_elt (&arr, ((void*)0), "P_BOUNDS", ((void*)0),
        "Bad GNAT array descriptor");
  else
    return ((void*)0);
}
