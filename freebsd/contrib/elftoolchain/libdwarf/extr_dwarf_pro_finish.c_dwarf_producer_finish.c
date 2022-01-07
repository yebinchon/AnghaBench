
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dbg_mode; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 scalar_t__ DW_DLC_WRITE ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_NOCOUNT ;
 int _dwarf_deinit (TYPE_1__*) ;
 int free (TYPE_1__*) ;

Dwarf_Unsigned
dwarf_producer_finish(Dwarf_P_Debug dbg, Dwarf_Error *error)
{

 if (dbg == ((void*)0) || dbg->dbg_mode != DW_DLC_WRITE) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 _dwarf_deinit(dbg);

 free(dbg);

 return (1);
}
