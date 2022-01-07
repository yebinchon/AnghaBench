
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int pascal_object_is_vtbl_ptr_type (struct type*) ;

int
pascal_object_is_vtbl_member (struct type *type)
{
  if (TYPE_CODE (type) == TYPE_CODE_PTR)
    {
      type = TYPE_TARGET_TYPE (type);
      if (TYPE_CODE (type) == TYPE_CODE_ARRAY)
 {
   type = TYPE_TARGET_TYPE (type);
   if (TYPE_CODE (type) == TYPE_CODE_STRUCT
       || TYPE_CODE (type) == TYPE_CODE_PTR)
     {


       return pascal_object_is_vtbl_ptr_type (type);
     }
 }
    }
  return 0;
}
