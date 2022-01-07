
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * dbg_iface; } ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Obj_Access_Interface ;
typedef int Dwarf_Handler ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLC_READ ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ _dwarf_alloc (TYPE_1__**,int ,int *) ;
 scalar_t__ _dwarf_init (TYPE_1__*,int ,int ,int ,int *) ;
 int free (TYPE_1__*) ;

int
dwarf_object_init(Dwarf_Obj_Access_Interface *iface, Dwarf_Handler errhand,
    Dwarf_Ptr errarg, Dwarf_Debug *ret_dbg, Dwarf_Error *error)
{
 Dwarf_Debug dbg;

 if (iface == ((void*)0) || ret_dbg == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (_dwarf_alloc(&dbg, DW_DLC_READ, error) != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 dbg->dbg_iface = iface;

 if (_dwarf_init(dbg, 0, errhand, errarg, error) != DW_DLE_NONE) {
  free(dbg);
  return (DW_DLV_ERROR);
 }

 *ret_dbg = dbg;

 return (DW_DLV_OK);
}
