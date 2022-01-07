
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 struct type* check_typedef (struct type*) ;
 struct type* desc_base_type (struct type*) ;
 scalar_t__ is_thin_pntr (struct type*) ;
 struct type* lookup_struct_elt_type (struct type*,char*,int) ;
 struct type* thin_descriptor_type (struct type*) ;

__attribute__((used)) static struct type *
desc_bounds_type (struct type *type)
{
  struct type *r;

  type = desc_base_type (type);

  if (type == ((void*)0))
    return ((void*)0);
  else if (is_thin_pntr (type))
    {
      type = thin_descriptor_type (type);
      if (type == ((void*)0))
 return ((void*)0);
      r = lookup_struct_elt_type (type, "BOUNDS", 1);
      if (r != ((void*)0))
 return check_typedef (r);
    }
  else if (TYPE_CODE (type) == TYPE_CODE_STRUCT)
    {
      r = lookup_struct_elt_type (type, "P_BOUNDS", 1);
      if (r != ((void*)0))
 return check_typedef (TYPE_TARGET_TYPE (check_typedef (r)));
    }
  return ((void*)0);
}
