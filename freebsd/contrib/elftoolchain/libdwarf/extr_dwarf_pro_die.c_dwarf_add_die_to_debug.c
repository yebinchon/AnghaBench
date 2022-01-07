
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dbgp_root_die; } ;
typedef int Dwarf_Unsigned ;
typedef int * Dwarf_P_Die ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_NOCOUNT ;
 int DW_DLV_OK ;

Dwarf_Unsigned
dwarf_add_die_to_debug(Dwarf_P_Debug dbg, Dwarf_P_Die first_die,
    Dwarf_Error *error)
{

 if (dbg == ((void*)0) || first_die == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 dbg->dbgp_root_die = first_die;

 return (DW_DLV_OK);
}
