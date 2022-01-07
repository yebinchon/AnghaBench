
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_machine; } ;
struct TYPE_4__ {TYPE_1__ eo_ehdr; int eo_elf; } ;
typedef int Dwarf_Small ;
typedef TYPE_2__ Dwarf_Elf_Object ;


 scalar_t__ ELFCLASS32 ;
 scalar_t__ EM_MIPS ;
 int assert (int ) ;
 scalar_t__ gelf_getclass (int ) ;

Dwarf_Small
_dwarf_elf_get_length_size(void *obj)
{
 Dwarf_Elf_Object *e;

 e = obj;
 assert(e != ((void*)0));

 if (gelf_getclass(e->eo_elf) == ELFCLASS32)
  return (4);
 else if (e->eo_ehdr.e_machine == EM_MIPS)
  return (8);
 else
  return (4);
}
