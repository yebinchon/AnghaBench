
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int at_form; TYPE_1__* u; } ;
struct TYPE_8__ {int * die_dbg; } ;
struct TYPE_7__ {int u64; } ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef scalar_t__ Dwarf_Bool ;
typedef TYPE_3__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;


 TYPE_3__* _dwarf_attr_find (TYPE_2__*,int ) ;

int
dwarf_attrval_flag(Dwarf_Die die, Dwarf_Half attr, Dwarf_Bool *valp, Dwarf_Error *err)
{
 Dwarf_Attribute at;
 Dwarf_Debug dbg;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || valp == ((void*)0)) {
  DWARF_SET_ERROR(dbg, err, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *valp = 0;

 if ((at = _dwarf_attr_find(die, attr)) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, err, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 switch (at->at_form) {
 case 129:
 case 128:
  *valp = (Dwarf_Bool) (!!at->u[0].u64);
  break;
 default:
  DWARF_SET_ERROR(dbg, err, DW_DLE_ATTR_FORM_BAD);
  return (DW_DLV_ERROR);
 }

 return (DW_DLV_OK);
}
