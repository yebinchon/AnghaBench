
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_7__ {int bl_len; scalar_t__ bl_data; } ;
struct TYPE_6__ {scalar_t__* e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;
typedef TYPE_2__ Dwarf_Block ;


 scalar_t__ DW_DLV_OK ;
 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 int be32dec (int *) ;
 int be64dec (int *) ;
 int dwarf_errmsg (int ) ;
 scalar_t__ dwarf_get_elf (int ,int **,int *) ;
 int elf_errmsg (int) ;
 TYPE_1__* gelf_getehdr (int *,TYPE_1__*) ;
 int le32dec (int *) ;
 int le64dec (int *) ;
 int warnx (char*,int ) ;

__attribute__((used)) static uint64_t
get_block_value(Dwarf_Debug dbg, Dwarf_Block *block)
{
 Elf *elf;
 GElf_Ehdr eh;
 Dwarf_Error de;

 if (dwarf_get_elf(dbg, &elf, &de) != DW_DLV_OK) {
  warnx("dwarf_get_elf failed: %s", dwarf_errmsg(de));
  return (0);
 }

 if (gelf_getehdr(elf, &eh) != &eh) {
  warnx("gelf_getehdr failed: %s", elf_errmsg(-1));
  return (0);
 }

 if (block->bl_len == 5) {
  if (eh.e_ident[EI_DATA] == ELFDATA2LSB)
   return (le32dec((uint8_t *) block->bl_data + 1));
  else
   return (be32dec((uint8_t *) block->bl_data + 1));
 } else if (block->bl_len == 9) {
  if (eh.e_ident[EI_DATA] == ELFDATA2LSB)
   return (le64dec((uint8_t *) block->bl_data + 1));
  else
   return (be64dec((uint8_t *) block->bl_data + 1));
 }

 return (0);
}
