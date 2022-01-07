
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int strcmp (char*,int ) ;
 char* type_name_no_tag (struct type*) ;
 int vtbl_ptr_name ;

int
cp_is_vtbl_ptr_type (struct type *type)
{
  char *typename = type_name_no_tag (type);

  return (typename != ((void*)0) && !strcmp (typename, vtbl_ptr_name));
}
