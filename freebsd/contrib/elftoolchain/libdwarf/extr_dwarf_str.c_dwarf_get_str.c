
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ds_size; scalar_t__ ds_data; } ;
typedef int Dwarf_Signed ;
typedef TYPE_1__ Dwarf_Section ;
typedef scalar_t__ Dwarf_Off ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 TYPE_1__* _dwarf_find_section (int *,char*) ;
 int strlen (char*) ;

int
dwarf_get_str(Dwarf_Debug dbg, Dwarf_Off offset, char **string,
    Dwarf_Signed *ret_strlen, Dwarf_Error *error)
{
 Dwarf_Section *ds;

 if (dbg == ((void*)0) || string == ((void*)0) || ret_strlen == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 ds = _dwarf_find_section(dbg, ".debug_str");
 if (ds == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 if (offset > ds->ds_size) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (offset == ds->ds_size) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *string = (char *) ds->ds_data + offset;
 *ret_strlen = strlen(*string);

 return (DW_DLV_OK);
}
