
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* at_refdie; int at_form; int at_attrib; TYPE_1__* at_die; } ;
struct TYPE_15__ {int dbg_offset_size; } ;
struct TYPE_14__ {int die_attr; } ;
typedef TYPE_1__* Dwarf_P_Die ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef TYPE_3__* Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_3__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 TYPE_3__* DW_DLV_BADADDR ;
 int DW_FORM_ref4 ;
 int DW_FORM_ref8 ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 scalar_t__ _dwarf_attr_alloc (TYPE_1__*,TYPE_3__**,int *) ;
 int at_next ;

Dwarf_P_Attribute
dwarf_add_AT_reference(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    Dwarf_P_Die ref_die, Dwarf_Error *error)
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
 if (dbg->dbg_offset_size == 4)
  at->at_form = DW_FORM_ref4;
 else
  at->at_form = DW_FORM_ref8;

 at->at_refdie = ref_die;

 STAILQ_INSERT_TAIL(&die->die_attr, at, at_next);

 return (at);
}
