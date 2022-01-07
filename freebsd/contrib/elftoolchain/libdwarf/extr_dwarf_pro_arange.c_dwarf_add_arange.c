
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_P_Debug ;
typedef int Dwarf_Error ;
typedef int Dwarf_Addr ;


 int dwarf_add_arange_b (int ,int ,int ,int ,int ,int ,int *) ;

Dwarf_Unsigned
dwarf_add_arange(Dwarf_P_Debug dbg, Dwarf_Addr start, Dwarf_Unsigned length,
    Dwarf_Signed symbol_index, Dwarf_Error *error)
{

 return (dwarf_add_arange_b(dbg, start, length, symbol_index, 0, 0,
     error));
}
