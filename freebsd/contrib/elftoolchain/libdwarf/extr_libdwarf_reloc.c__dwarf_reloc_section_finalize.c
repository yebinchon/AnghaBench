
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int dbgp_flags; } ;
struct TYPE_13__ {scalar_t__ ds_size; int ds_cap; int ds_ndx; int ds_symndx; int ds_name; int * ds_data; } ;
struct TYPE_12__ {int drs_drecnt; TYPE_1__* drs_ref; scalar_t__ drs_addend; TYPE_3__* drs_ds; } ;
struct TYPE_11__ {int ds_ndx; } ;
typedef int Elf64_Rela ;
typedef int Elf64_Rel ;
typedef int Elf32_Rela ;
typedef int Elf32_Rel ;
typedef int Dwarf_Unsigned ;
typedef TYPE_2__* Dwarf_Rel_Section ;
typedef TYPE_3__* Dwarf_P_Section ;
typedef TYPE_4__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_4__*,int *,int) ;
 int DW_DLC_SIZE_64 ;
 int DW_DLC_SYMBOLIC_RELOCATIONS ;
 int DW_DLE_ELF_SECT_ERR ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int SHT_REL ;
 int SHT_RELA ;
 int _dwarf_pro_callback (TYPE_4__*,int ,int,int ,int ,int ,int ,int *,int *) ;
 int _dwarf_reloc_section_free (TYPE_4__*,TYPE_2__**) ;
 int assert (int) ;
 int * realloc (int *,size_t) ;

int
_dwarf_reloc_section_finalize(Dwarf_P_Debug dbg, Dwarf_Rel_Section drs,
    Dwarf_Error *error)
{
 Dwarf_P_Section ds;
 Dwarf_Unsigned unit;
 int ret, size;

 assert(dbg != ((void*)0) && drs != ((void*)0) && drs->drs_ds != ((void*)0) &&
     drs->drs_ref != ((void*)0));

 ds = drs->drs_ds;




 if (dbg->dbgp_flags & DW_DLC_SIZE_64)
  unit = drs->drs_addend ? sizeof(Elf64_Rela) : sizeof(Elf64_Rel);
 else
  unit = drs->drs_addend ? sizeof(Elf32_Rela) : sizeof(Elf32_Rel);
 assert(ds->ds_size == 0);
 size = drs->drs_drecnt * unit;




 if (size == 0) {
  _dwarf_reloc_section_free(dbg, &drs);
  return (DW_DLE_NONE);
 }





 if ((dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS) == 0) {
  ds->ds_cap = size;
  if ((ds->ds_data = realloc(ds->ds_data, (size_t) ds->ds_cap)) ==
      ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
 }







 ret = _dwarf_pro_callback(dbg, ds->ds_name, size,
     drs->drs_addend ? SHT_RELA : SHT_REL, 0, 0, drs->drs_ref->ds_ndx,
     &ds->ds_symndx, ((void*)0));
 if (ret < 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ELF_SECT_ERR);
  return (DW_DLE_ELF_SECT_ERR);
 }
 ds->ds_ndx = ret;

 return (DW_DLE_NONE);
}
