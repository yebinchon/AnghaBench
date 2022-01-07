
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dbg_cu; int dbg_info_loaded; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Ranges ;
typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLV_ERROR ;
 int STAILQ_FIRST (int *) ;
 int _dwarf_get_ranges (TYPE_1__*,int ,int ,int **,int *,int *,int *) ;
 scalar_t__ _dwarf_info_load (TYPE_1__*,int,int,int *) ;

int
dwarf_get_ranges(Dwarf_Debug dbg, Dwarf_Off offset, Dwarf_Ranges **ranges,
    Dwarf_Signed *ret_cnt, Dwarf_Unsigned *ret_byte_cnt, Dwarf_Error *error)
{

 if (dbg == ((void*)0) || ranges == ((void*)0) || ret_cnt == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (!dbg->dbg_info_loaded) {
  if (_dwarf_info_load(dbg, 1, 1, error) != DW_DLE_NONE)
   return (DW_DLV_ERROR);
 }

 return (_dwarf_get_ranges(dbg, STAILQ_FIRST(&dbg->dbg_cu), offset,
     ranges, ret_cnt, ret_byte_cnt, error));
}
