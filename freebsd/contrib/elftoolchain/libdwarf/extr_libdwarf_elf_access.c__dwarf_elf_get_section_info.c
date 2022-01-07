
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t eo_seccnt; int eo_strndx; int eo_elf; TYPE_1__* eo_shdr; } ;
struct TYPE_6__ {int * name; int size; int addr; } ;
struct TYPE_5__ {int sh_name; int sh_size; int sh_addr; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ Dwarf_Obj_Access_Section ;
typedef size_t Dwarf_Half ;
typedef TYPE_3__ Dwarf_Elf_Object ;


 int DW_DLE_ARGUMENT ;
 int DW_DLE_ELF ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;
 int * elf_strptr (int ,int ,int ) ;

int
_dwarf_elf_get_section_info(void *obj, Dwarf_Half ndx,
    Dwarf_Obj_Access_Section *ret_section, int *error)
{
 Dwarf_Elf_Object *e;
 GElf_Shdr *sh;

 e = obj;
 assert(e != ((void*)0));

 if (ret_section == ((void*)0)) {
  if (error)
   *error = DW_DLE_ARGUMENT;
  return (DW_DLV_ERROR);
 }

 if (ndx >= e->eo_seccnt) {
  if (error)
   *error = DW_DLE_NO_ENTRY;
  return (DW_DLV_NO_ENTRY);
 }

 sh = &e->eo_shdr[ndx];

 ret_section->addr = sh->sh_addr;
 ret_section->size = sh->sh_size;

 ret_section->name = elf_strptr(e->eo_elf, e->eo_strndx, sh->sh_name);
 if (ret_section->name == ((void*)0)) {
  if (error)
   *error = DW_DLE_ELF;
  return (DW_DLV_ERROR);
 }

 return (DW_DLV_OK);
}
