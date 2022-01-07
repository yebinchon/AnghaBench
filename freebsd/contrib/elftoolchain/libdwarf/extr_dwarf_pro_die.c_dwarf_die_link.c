
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int * die_dbg; } ;
typedef TYPE_1__* Dwarf_P_Die ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 TYPE_1__* DW_DLV_BADADDR ;
 int _dwarf_die_count_links (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int _dwarf_die_link (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

Dwarf_P_Die
dwarf_die_link(Dwarf_P_Die die, Dwarf_P_Die parent,
    Dwarf_P_Die child, Dwarf_P_Die left_sibling, Dwarf_P_Die right_sibling,
    Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 int count;


 if (die == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 dbg = die->die_dbg;
 count = _dwarf_die_count_links(parent, child, left_sibling,
     right_sibling);

 if (count > 1) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 } else if (count == 0)
  return (die);

 _dwarf_die_link(die, parent, child, left_sibling, right_sibling);

 return (die);
}
