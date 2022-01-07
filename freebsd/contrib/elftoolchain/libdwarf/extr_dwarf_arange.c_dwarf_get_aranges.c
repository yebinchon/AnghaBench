
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dbg_arange_cnt; int * dbg_arange_array; } ;
typedef scalar_t__ Dwarf_Signed ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;
typedef int Dwarf_Arange ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 scalar_t__ _dwarf_arange_init (TYPE_1__*,int *) ;
 int assert (int ) ;

int
dwarf_get_aranges(Dwarf_Debug dbg, Dwarf_Arange **arlist,
    Dwarf_Signed *ret_arange_cnt, Dwarf_Error *error)
{

 if (dbg == ((void*)0) || arlist == ((void*)0) || ret_arange_cnt == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (dbg->dbg_arange_cnt == 0) {
  if (_dwarf_arange_init(dbg, error) != DW_DLE_NONE)
   return (DW_DLV_ERROR);
  if (dbg->dbg_arange_cnt == 0) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
   return (DW_DLV_NO_ENTRY);
  }
 }

 assert(dbg->dbg_arange_array != ((void*)0));

 *arlist = dbg->dbg_arange_array;
 *ret_arange_cnt = dbg->dbg_arange_cnt;

 return (DW_DLV_OK);
}
