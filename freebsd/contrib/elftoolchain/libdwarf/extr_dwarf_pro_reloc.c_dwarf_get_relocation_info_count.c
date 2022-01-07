
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dbgp_flags; int dbgp_drscnt; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_DRD_BUFFER_VERSION ;
 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLC_SYMBOLIC_RELOCATIONS ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;

int
dwarf_get_relocation_info_count(Dwarf_P_Debug dbg, Dwarf_Unsigned *reloc_cnt,
    int *drd_buffer_version, Dwarf_Error *error)
{

 if (dbg == ((void*)0) || reloc_cnt == ((void*)0) || drd_buffer_version == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if ((dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS) == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *reloc_cnt = dbg->dbgp_drscnt;
 *drd_buffer_version = DWARF_DRD_BUFFER_VERSION;

 return (DW_DLV_OK);
}
