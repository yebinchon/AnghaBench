
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ab_atnum; int ab_length; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_1__* Dwarf_Abbrev ;


 int DWARF_SET_ERROR (int *,int *,int) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int _dwarf_abbrev_parse (int *,int *,int *,TYPE_1__**,int *) ;

int
dwarf_get_abbrev(Dwarf_Debug dbg, Dwarf_Unsigned offset,
    Dwarf_Abbrev *return_abbrev, Dwarf_Unsigned *length,
    Dwarf_Unsigned *attr_count, Dwarf_Error *error)
{
 Dwarf_Abbrev ab;
 int ret;

 if (dbg == ((void*)0) || return_abbrev == ((void*)0) || length == ((void*)0) ||
     attr_count == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 ret = _dwarf_abbrev_parse(dbg, ((void*)0), &offset, &ab, error);
 if (ret != DW_DLE_NONE) {
  if (ret == DW_DLE_NO_ENTRY) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
   return (DW_DLV_NO_ENTRY);
  } else
   return (DW_DLV_ERROR);
 }

 *return_abbrev = ab;
 *length = ab->ab_length;
 *attr_count = ab->ab_atnum;

 return (DW_DLV_OK);
}
