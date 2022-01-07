
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* u; int at_form; int at_attrib; TYPE_2__* at_die; } ;
struct TYPE_12__ {int die_attr; } ;
struct TYPE_11__ {int u64; } ;
typedef scalar_t__ Dwarf_Small ;
typedef TYPE_2__* Dwarf_P_Die ;
typedef int * Dwarf_P_Debug ;
typedef TYPE_3__* Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_3__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 TYPE_3__* DW_DLV_BADADDR ;
 int DW_FORM_flag ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 scalar_t__ _dwarf_attr_alloc (TYPE_2__*,TYPE_3__**,int *) ;
 int at_next ;

Dwarf_P_Attribute
dwarf_add_AT_flag(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    Dwarf_Small flag, Dwarf_Error *error)
{
 Dwarf_Attribute at;

 if (dbg == ((void*)0) || die == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if (_dwarf_attr_alloc(die, &at, error) != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 at->at_die = die;
 at->at_attrib = attr;
 at->at_form = DW_FORM_flag;
 at->u[0].u64 = flag ? 1 : 0;

 STAILQ_INSERT_TAIL(&die->die_attr, at, at_next);

 return (at);
}
