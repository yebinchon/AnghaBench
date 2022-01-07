
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct Dwarf_Relocation_Data_s {int dummy; } ;
struct TYPE_17__ {int dbgp_flags; scalar_t__ dbgp_drscnt; TYPE_4__* dbgp_drspos; } ;
struct TYPE_16__ {scalar_t__ drs_drecnt; TYPE_3__* drs_drd; int dre_symndx; int dre_offset; int dre_length; int dre_type; int drs_dre; TYPE_2__* drs_ref; TYPE_1__* drs_ds; } ;
struct TYPE_15__ {int drd_symbol_index; int drd_offset; int drd_length; int drd_type; } ;
struct TYPE_14__ {int ds_ndx; } ;
struct TYPE_13__ {int ds_ndx; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef TYPE_3__* Dwarf_Relocation_Data ;
typedef TYPE_4__* Dwarf_Rel_Section ;
typedef TYPE_4__* Dwarf_Rel_Entry ;
typedef TYPE_6__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_6__*,int *,int ) ;
 int DW_DLC_SYMBOLIC_RELOCATIONS ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 TYPE_4__* STAILQ_FIRST (int *) ;
 void* STAILQ_NEXT (TYPE_4__*,int ) ;
 int assert (int) ;
 TYPE_3__* calloc (scalar_t__,int) ;
 int dre_next ;
 int drs_next ;

int
dwarf_get_relocation_info(Dwarf_P_Debug dbg, Dwarf_Signed *elf_section_index,
    Dwarf_Signed *elf_section_link, Dwarf_Unsigned *reloc_entry_count,
    Dwarf_Relocation_Data *reloc_buffer, Dwarf_Error *error)
{
 Dwarf_Rel_Section drs;
 Dwarf_Rel_Entry dre;
 int i;

 if (dbg == ((void*)0) || elf_section_index == ((void*)0) ||
     elf_section_link == ((void*)0) || reloc_entry_count == ((void*)0) ||
     reloc_buffer == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if ((dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS) == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 if (dbg->dbgp_drscnt == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 if (dbg->dbgp_drspos == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 drs = dbg->dbgp_drspos;
 assert(drs->drs_ds != ((void*)0) && drs->drs_ref != ((void*)0));
 assert(drs->drs_drecnt > 0);

 *elf_section_index = drs->drs_ds->ds_ndx;
 *elf_section_link = drs->drs_ref->ds_ndx;
 *reloc_entry_count = drs->drs_drecnt;

 if (drs->drs_drd == ((void*)0)) {
  drs->drs_drd = calloc(*reloc_entry_count,
      sizeof(struct Dwarf_Relocation_Data_s));
  if (drs->drs_drd == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLV_ERROR);
  }
  for (i = 0, dre = STAILQ_FIRST(&drs->drs_dre);
      (Dwarf_Unsigned) i < *reloc_entry_count && dre != ((void*)0);
      i++, dre = STAILQ_NEXT(dre, dre_next)) {
   drs->drs_drd[i].drd_type = dre->dre_type;
   drs->drs_drd[i].drd_length = dre->dre_length;
   drs->drs_drd[i].drd_offset = dre->dre_offset;
   drs->drs_drd[i].drd_symbol_index = dre->dre_symndx;
  }
  assert((Dwarf_Unsigned) i == *reloc_entry_count && dre == ((void*)0));
 }

 *reloc_buffer = drs->drs_drd;

 dbg->dbgp_drspos = STAILQ_NEXT(dbg->dbgp_drspos, drs_next);

 return (DW_DLV_OK);
}
