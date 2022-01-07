
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* alloc_type (int ) ;
 struct type** coff_lookup_type (int) ;
 int current_objfile ;

__attribute__((used)) static struct type *
coff_alloc_type (int index)
{
  struct type **type_addr = coff_lookup_type (index);
  struct type *type = *type_addr;




  if (type == ((void*)0))
    {
      type = alloc_type (current_objfile);
      *type_addr = type;
    }
  return type;
}
