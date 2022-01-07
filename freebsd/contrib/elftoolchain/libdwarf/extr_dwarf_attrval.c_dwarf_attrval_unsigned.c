
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int at_form; TYPE_1__* u; } ;
struct TYPE_11__ {int * die_dbg; } ;
struct TYPE_10__ {scalar_t__ u64; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 scalar_t__ DW_AT_abstract_origin ;
 scalar_t__ DW_AT_specification ;
 scalar_t__ DW_AT_type ;
 int DW_DLA_DIE ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 TYPE_3__* _dwarf_attr_find (TYPE_2__*,scalar_t__) ;
 TYPE_2__* _dwarf_die_find (TYPE_2__*,scalar_t__) ;
 int dwarf_dealloc (int *,TYPE_2__*,int ) ;

int
dwarf_attrval_unsigned(Dwarf_Die die, Dwarf_Half attr, Dwarf_Unsigned *valp, Dwarf_Error *err)
{
 Dwarf_Attribute at;
 Dwarf_Die die1;
 Dwarf_Unsigned val;
 Dwarf_Debug dbg;
 int first;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || valp == ((void*)0)) {
  DWARF_SET_ERROR(dbg, err, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *valp = 0;

 die1 = ((void*)0);
 for (;;) {
  if ((at = _dwarf_attr_find(die, attr)) != ((void*)0) ||
      attr != DW_AT_type)
   break;
  if ((at = _dwarf_attr_find(die, DW_AT_abstract_origin)) ==
      ((void*)0) &&
      (at = _dwarf_attr_find(die, DW_AT_specification)) == ((void*)0))
   break;

  switch (at->at_form) {
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
   val = at->u[0].u64;
   first = (die1 == ((void*)0));
   die1 = _dwarf_die_find(die, val);
   if (!first)
    dwarf_dealloc(dbg, die, DW_DLA_DIE);
   if (die1 == ((void*)0)) {
    DWARF_SET_ERROR(dbg, err, DW_DLE_NO_ENTRY);
    return (DW_DLV_NO_ENTRY);
   }
   die = die1;
   break;
  default:
   DWARF_SET_ERROR(dbg, err, DW_DLE_ATTR_FORM_BAD);
   return (DW_DLV_ERROR);
  }
 }

 if (at == ((void*)0)) {
  DWARF_SET_ERROR(dbg, err, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 switch (at->at_form) {
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 128:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  *valp = at->u[0].u64;
  break;
 default:
  if (die1 != ((void*)0))
   dwarf_dealloc(dbg, die1, DW_DLA_DIE);
  DWARF_SET_ERROR(dbg, err, DW_DLE_ATTR_FORM_BAD);
  return (DW_DLV_ERROR);
 }

 if (die1 != ((void*)0))
  dwarf_dealloc(dbg, die1, DW_DLA_DIE);

 return (DW_DLV_OK);
}
