
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dbgp_seccnt; } ;
typedef int Dwarf_Signed ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLV_NOCOUNT ;
 scalar_t__ _dwarf_generate_sections (TYPE_1__*,int *) ;

Dwarf_Signed
dwarf_transform_to_disk_form(Dwarf_P_Debug dbg, Dwarf_Error *error)
{

 if (dbg == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 if (_dwarf_generate_sections(dbg, error) != DW_DLE_NONE)
  return (DW_DLV_NOCOUNT);

 return (dbg->dbgp_seccnt);
}
