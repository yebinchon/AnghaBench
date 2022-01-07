
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ar_address; scalar_t__ ar_range; TYPE_2__* ar_as; } ;
struct TYPE_7__ {TYPE_1__* as_cu; } ;
struct TYPE_6__ {int * cu_dbg; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_Arange ;
typedef scalar_t__ Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;

int
dwarf_get_arange(Dwarf_Arange *arlist, Dwarf_Unsigned arange_cnt,
    Dwarf_Addr addr, Dwarf_Arange *ret_arange, Dwarf_Error *error)
{
 Dwarf_Arange ar;
 Dwarf_Debug dbg;
 int i;

 if (arlist == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 dbg = (*arlist)->ar_as->as_cu->cu_dbg;

 if (ret_arange == ((void*)0) || arange_cnt == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 for (i = 0; (Dwarf_Unsigned)i < arange_cnt; i++) {
  ar = arlist[i];
  if (addr >= ar->ar_address && addr < ar->ar_address +
      ar->ar_range) {
   *ret_arange = ar;
   return (DW_DLV_OK);
  }
 }

 DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);

 return (DW_DLV_NO_ENTRY);
}
