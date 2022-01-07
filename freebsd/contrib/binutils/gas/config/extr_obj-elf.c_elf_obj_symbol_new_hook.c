
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct elf_obj_sy {int * versioned_name; int * size; } ;


 scalar_t__ ECOFF_DEBUGGING ;
 int ecoff_symbol_new_hook (int *) ;
 struct elf_obj_sy* symbol_get_obj (int *) ;

void
elf_obj_symbol_new_hook (symbolS *symbolP)
{
  struct elf_obj_sy *sy_obj;

  sy_obj = symbol_get_obj (symbolP);
  sy_obj->size = ((void*)0);
  sy_obj->versioned_name = ((void*)0);





}
