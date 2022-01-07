
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* e_ident; } ;
struct TYPE_4__ {TYPE_1__ eo_ehdr; } ;
typedef int Dwarf_Endianness ;
typedef TYPE_2__ Dwarf_Elf_Object ;


 int DW_OBJECT_LSB ;
 int DW_OBJECT_MSB ;
 size_t EI_DATA ;



 int assert (int ) ;

Dwarf_Endianness
_dwarf_elf_get_byte_order(void *obj)
{
 Dwarf_Elf_Object *e;

 e = obj;
 assert(e != ((void*)0));

 switch (e->eo_ehdr.e_ident[EI_DATA]) {
 case 129:
  return (DW_OBJECT_MSB);

 case 130:
 case 128:
 default:
  return (DW_OBJECT_LSB);
 }
}
