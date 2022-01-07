
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* desc_base_type (struct type*) ;
 int * lookup_struct_elt_type (struct type*,char*,int) ;

__attribute__((used)) static int
is_thick_pntr (struct type *type)
{
  type = desc_base_type (type);
  return (type != ((void*)0) && TYPE_CODE (type) == TYPE_CODE_STRUCT
   && lookup_struct_elt_type (type, "P_BOUNDS", 1) != ((void*)0));
}
