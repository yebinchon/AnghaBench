
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eo_seccnt; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__ Dwarf_Elf_Object ;


 int assert (int ) ;

Dwarf_Unsigned
_dwarf_elf_get_section_count(void *obj)
{
 Dwarf_Elf_Object *e;

 e = obj;
 assert(e != ((void*)0));

 return (e->eo_seccnt);
}
