
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {int dbgp_dielist; } ;
struct TYPE_23__ {int die_tag; TYPE_2__* die_dbg; } ;
typedef int Dwarf_Tag ;
typedef TYPE_1__* Dwarf_P_Die ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 TYPE_1__* DW_DLV_BADADDR ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 scalar_t__ _dwarf_die_alloc (TYPE_2__*,TYPE_1__**,int *) ;
 int _dwarf_die_count_links (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int _dwarf_die_link (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int die_pro_next ;

Dwarf_P_Die
dwarf_new_die(Dwarf_P_Debug dbg, Dwarf_Tag new_tag,
    Dwarf_P_Die parent, Dwarf_P_Die child, Dwarf_P_Die left_sibling,
    Dwarf_P_Die right_sibling, Dwarf_Error *error)
{
 Dwarf_P_Die die;
 int count;

 if (dbg == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 count = _dwarf_die_count_links(parent, child, left_sibling,
     right_sibling);

 if (count > 1) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if (_dwarf_die_alloc(dbg, &die, error) != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 die->die_dbg = dbg;
 die->die_tag = new_tag;

 STAILQ_INSERT_TAIL(&dbg->dbgp_dielist, die, die_pro_next);

 if (count == 0)
  return (die);

 _dwarf_die_link(die, parent, child, left_sibling, right_sibling);

 return (die);
}
