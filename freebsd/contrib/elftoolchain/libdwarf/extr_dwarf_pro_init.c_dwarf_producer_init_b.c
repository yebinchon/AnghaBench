
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dbg_mode; int * dbgp_func_b; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Ptr ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Handler ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Callback_Func_b ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLC_RDWR ;
 int DW_DLC_READ ;
 int DW_DLC_WRITE ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 TYPE_1__* DW_DLV_BADADDR ;
 scalar_t__ _dwarf_alloc (TYPE_1__**,int,int *) ;
 scalar_t__ _dwarf_init (TYPE_1__*,int,int ,int ,int *) ;
 int free (TYPE_1__*) ;

Dwarf_P_Debug
dwarf_producer_init_b(Dwarf_Unsigned flags, Dwarf_Callback_Func_b func,
    Dwarf_Handler errhand, Dwarf_Ptr errarg, Dwarf_Error *error)
{
 Dwarf_P_Debug dbg;
 int mode;

 if (flags & DW_DLC_READ || flags & DW_DLC_RDWR) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if (flags & DW_DLC_WRITE)
  mode = DW_DLC_WRITE;
 else {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if (func == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if (_dwarf_alloc(&dbg, DW_DLC_WRITE, error) != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 dbg->dbg_mode = mode;

 if (_dwarf_init(dbg, flags, errhand, errarg, error) != DW_DLE_NONE) {
  free(dbg);
  return (DW_DLV_BADADDR);
 }

 dbg->dbgp_func_b = func;

 return (dbg);
}
