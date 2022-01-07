
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* TYPE_FIELD_TYPE (int ,int) ;
 struct type* desc_base_type (struct type*) ;
 scalar_t__ is_thick_pntr (struct type*) ;
 scalar_t__ is_thin_pntr (struct type*) ;
 struct type* lookup_pointer_type (struct type*) ;
 struct type* lookup_struct_elt_type (struct type*,char*,int) ;
 int thin_descriptor_type (struct type*) ;

__attribute__((used)) static struct type *
desc_data_type (struct type *type)
{
  type = desc_base_type (type);


  if (is_thin_pntr (type))
    return lookup_pointer_type
      (desc_base_type (TYPE_FIELD_TYPE (thin_descriptor_type (type), 1)));
  else if (is_thick_pntr (type))
    return lookup_struct_elt_type (type, "P_ARRAY", 1);
  else
    return ((void*)0);
}
