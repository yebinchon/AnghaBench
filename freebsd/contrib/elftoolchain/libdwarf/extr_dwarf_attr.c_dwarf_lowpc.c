
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* u; } ;
struct TYPE_8__ {int * die_dbg; } ;
struct TYPE_7__ {int u64; } ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_Attribute ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_AT_low_pc ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 TYPE_3__* _dwarf_attr_find (TYPE_2__*,int ) ;

int
dwarf_lowpc(Dwarf_Die die, Dwarf_Addr *ret_lowpc, Dwarf_Error *error)
{
 Dwarf_Attribute at;
 Dwarf_Debug dbg;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || ret_lowpc == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if ((at = _dwarf_attr_find(die, DW_AT_low_pc)) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *ret_lowpc = at->u[0].u64;

 return (DW_DLV_OK);
}
