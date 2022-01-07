
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_P_Die ;
typedef int Dwarf_P_Attribute ;
typedef int Dwarf_Error ;
typedef int Dwarf_Attribute ;


 int DW_AT_const_value ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLV_BADADDR ;
 scalar_t__ _dwarf_add_string_attr (int ,int *,int ,char*,int *) ;

Dwarf_P_Attribute
dwarf_add_AT_const_value_string(Dwarf_P_Die die, char *string,
    Dwarf_Error *error)
{
 Dwarf_Attribute at;

 if (_dwarf_add_string_attr(die, &at, DW_AT_const_value, string,
     error) != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 return (at);
}
