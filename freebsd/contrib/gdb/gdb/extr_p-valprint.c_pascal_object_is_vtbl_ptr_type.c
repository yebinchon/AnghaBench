
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int pascal_vtbl_ptr_name ;
 scalar_t__ strcmp (char*,int ) ;
 char* type_name_no_tag (struct type*) ;

int
pascal_object_is_vtbl_ptr_type (struct type *type)
{
  char *typename = type_name_no_tag (type);

  return (typename != ((void*)0)
   && strcmp (typename, pascal_vtbl_ptr_name) == 0);
}
