
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* ed_data; int * ed_alloc; } ;
struct TYPE_10__ {int * e_ident; } ;
struct TYPE_9__ {scalar_t__ sh_type; scalar_t__ sh_size; size_t sh_info; size_t sh_link; } ;
struct TYPE_8__ {int d_size; int d_buf; } ;
typedef TYPE_2__ GElf_Shdr ;
typedef TYPE_3__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf_Data ;
typedef int Elf ;
typedef int Dwarf_Error ;
typedef TYPE_4__ Dwarf_Elf_Data ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ELF_ERROR (int ,int *) ;
 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_ELF ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 size_t EI_DATA ;
 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 int _DWARF_SET_ERROR (int *,int *,int,int) ;
 int _dwarf_elf_apply_rel_reloc (int ,int *,int ,int *,int *,int ) ;
 int _dwarf_elf_apply_rela_reloc (int ,int *,int ,int *,int *,int ) ;
 int elf_errno () ;
 int * elf_getdata (int *,int *) ;
 int * elf_nextscn (int *,int *) ;
 int * gelf_getehdr (int *,TYPE_3__*) ;
 int * gelf_getshdr (int *,TYPE_2__*) ;
 int * malloc (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int
_dwarf_elf_relocate(Dwarf_Debug dbg, Elf *elf, Dwarf_Elf_Data *ed, size_t shndx,
    size_t symtab, Elf_Data *symtab_data, Dwarf_Error *error)
{
 GElf_Ehdr eh;
 GElf_Shdr sh;
 Elf_Scn *scn;
 Elf_Data *rel;
 int elferr;

 if (symtab == 0 || symtab_data == ((void*)0))
  return (DW_DLE_NONE);

 if (gelf_getehdr(elf, &eh) == ((void*)0)) {
  DWARF_SET_ELF_ERROR(dbg, error);
  return (DW_DLE_ELF);
 }

 scn = ((void*)0);
 (void) elf_errno();
 while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
  if (gelf_getshdr(scn, &sh) == ((void*)0)) {
   DWARF_SET_ELF_ERROR(dbg, error);
   return (DW_DLE_ELF);
  }

  if ((sh.sh_type != SHT_REL && sh.sh_type != SHT_RELA) ||
       sh.sh_size == 0)
   continue;

  if (sh.sh_info == shndx && sh.sh_link == symtab) {
   if ((rel = elf_getdata(scn, ((void*)0))) == ((void*)0)) {
    elferr = elf_errno();
    if (elferr != 0) {
     _DWARF_SET_ERROR(((void*)0), error,
         DW_DLE_ELF, elferr);
     return (DW_DLE_ELF);
    } else
     return (DW_DLE_NONE);
   }

   ed->ed_alloc = malloc(ed->ed_data->d_size);
   if (ed->ed_alloc == ((void*)0)) {
    DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
    return (DW_DLE_MEMORY);
   }
   memcpy(ed->ed_alloc, ed->ed_data->d_buf,
       ed->ed_data->d_size);
   if (sh.sh_type == SHT_REL)
    _dwarf_elf_apply_rel_reloc(dbg,
        ed->ed_alloc, ed->ed_data->d_size,
        rel, symtab_data, eh.e_ident[EI_DATA]);
   else
    _dwarf_elf_apply_rela_reloc(dbg,
        ed->ed_alloc, ed->ed_data->d_size,
        rel, symtab_data, eh.e_ident[EI_DATA]);

   return (DW_DLE_NONE);
  }
 }
 elferr = elf_errno();
 if (elferr != 0) {
  DWARF_SET_ELF_ERROR(dbg, error);
  return (DW_DLE_ELF);
 }

 return (DW_DLE_NONE);
}
