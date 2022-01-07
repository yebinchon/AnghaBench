
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * die_dbg; } ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef int * Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int * _dwarf_attr_find (TYPE_1__*,int ) ;

int
dwarf_attr(Dwarf_Die die, Dwarf_Half attr, Dwarf_Attribute *atp,
    Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 Dwarf_Attribute at;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || atp == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if ((at = _dwarf_attr_find(die, attr)) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *atp = at;

 return (DW_DLV_OK);
}
