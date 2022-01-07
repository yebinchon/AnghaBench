
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ** die_attrarray; int die_attr; TYPE_1__* die_ab; int * die_dbg; } ;
struct TYPE_4__ {scalar_t__ ab_atnum; } ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef int * Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int * STAILQ_FIRST (int *) ;
 int * STAILQ_NEXT (int *,int ) ;
 int at_next ;
 int ** malloc (int) ;

int
dwarf_attrlist(Dwarf_Die die, Dwarf_Attribute **attrbuf,
    Dwarf_Signed *attrcount, Dwarf_Error *error)
{
 Dwarf_Attribute at;
 Dwarf_Debug dbg;
 int i;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || attrbuf == ((void*)0) || attrcount == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (die->die_ab->ab_atnum == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *attrcount = die->die_ab->ab_atnum;

 if (die->die_attrarray != ((void*)0)) {
  *attrbuf = die->die_attrarray;
  return (DW_DLV_OK);
 }

 if ((die->die_attrarray = malloc(*attrcount * sizeof(Dwarf_Attribute)))
     == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLV_ERROR);
 }

 for (i = 0, at = STAILQ_FIRST(&die->die_attr);
      i < *attrcount && at != ((void*)0); i++, at = STAILQ_NEXT(at, at_next))
  die->die_attrarray[i] = at;

 *attrbuf = die->die_attrarray;

 return (DW_DLV_OK);
}
