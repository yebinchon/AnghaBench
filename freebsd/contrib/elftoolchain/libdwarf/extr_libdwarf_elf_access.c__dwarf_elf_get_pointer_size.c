
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eo_elf; } ;
typedef int Dwarf_Small ;
typedef TYPE_1__ Dwarf_Elf_Object ;


 scalar_t__ ELFCLASS32 ;
 int assert (int ) ;
 scalar_t__ gelf_getclass (int ) ;

Dwarf_Small
_dwarf_elf_get_pointer_size(void *obj)
{
 Dwarf_Elf_Object *e;

 e = obj;
 assert(e != ((void*)0));

 if (gelf_getclass(e->eo_elf) == ELFCLASS32)
  return (4);
 else
  return (8);
}
