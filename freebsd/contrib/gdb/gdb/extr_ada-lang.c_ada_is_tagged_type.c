
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int * ada_lookup_struct_elt_type (struct type*,char*,int,int *) ;

int
ada_is_tagged_type (struct type *type)
{
  if (type == ((void*)0) || TYPE_CODE (type) != TYPE_CODE_STRUCT)
    return 0;

  return (ada_lookup_struct_elt_type (type, "_tag", 1, ((void*)0)) != ((void*)0));
}
