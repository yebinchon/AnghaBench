
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_P_Die ;
typedef int Dwarf_P_Debug ;
typedef int Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;


 int dwarf_add_AT_targ_address_b (int ,int ,int ,int ,int ,int *) ;

Dwarf_P_Attribute
dwarf_add_AT_targ_address(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    Dwarf_Unsigned pc_value, Dwarf_Signed sym_index, Dwarf_Error *error)
{

 return (dwarf_add_AT_targ_address_b(dbg, die, attr, pc_value, sym_index,
     error));
}
