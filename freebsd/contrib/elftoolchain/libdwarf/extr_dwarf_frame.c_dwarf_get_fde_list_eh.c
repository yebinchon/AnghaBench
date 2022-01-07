
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dbg_eh_frame; int * dbg_internal_reg_table; } ;
struct TYPE_7__ {int fs_fdelen; int * fs_fdearray; int fs_cielen; int * fs_ciearray; } ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Fde ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Debug ;
typedef int Dwarf_Cie ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 scalar_t__ _dwarf_frame_interal_table_init (TYPE_2__*,int *) ;
 scalar_t__ _dwarf_frame_section_load_eh (TYPE_2__*,int *) ;

int
dwarf_get_fde_list_eh(Dwarf_Debug dbg, Dwarf_Cie **cie_list,
    Dwarf_Signed *cie_count, Dwarf_Fde **fde_list, Dwarf_Signed *fde_count,
    Dwarf_Error *error)
{

 if (dbg == ((void*)0) || cie_list == ((void*)0) || cie_count == ((void*)0) ||
     fde_list == ((void*)0) || fde_count == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (dbg->dbg_internal_reg_table == ((void*)0)) {
  if (_dwarf_frame_interal_table_init(dbg, error) != DW_DLE_NONE)
   return (DW_DLV_ERROR);
 }

 if (dbg->dbg_eh_frame == ((void*)0)) {
  if (_dwarf_frame_section_load_eh(dbg, error) != DW_DLE_NONE)
   return (DW_DLV_ERROR);
  if (dbg->dbg_eh_frame == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
   return (DW_DLV_NO_ENTRY);
  }
 }

 if (dbg->dbg_eh_frame->fs_ciearray == ((void*)0) ||
     dbg->dbg_eh_frame->fs_fdearray == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *cie_list = dbg->dbg_eh_frame->fs_ciearray;
 *cie_count = dbg->dbg_eh_frame->fs_cielen;
 *fde_list = dbg->dbg_eh_frame->fs_fdearray;
 *fde_count = dbg->dbg_eh_frame->fs_fdelen;

 return (DW_DLV_OK);
}
