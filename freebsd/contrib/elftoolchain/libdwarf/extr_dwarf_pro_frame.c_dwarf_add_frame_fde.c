
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int Dwarf_P_Fde ;
typedef int Dwarf_P_Die ;
typedef int Dwarf_P_Debug ;
typedef int Dwarf_Error ;
typedef int Dwarf_Addr ;


 int dwarf_add_frame_fde_b (int ,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

Dwarf_Unsigned
dwarf_add_frame_fde(Dwarf_P_Debug dbg, Dwarf_P_Fde fde, Dwarf_P_Die die,
    Dwarf_Unsigned cie, Dwarf_Addr virt_addr, Dwarf_Unsigned code_len,
    Dwarf_Unsigned symbol_index, Dwarf_Error *error)
{

 return (dwarf_add_frame_fde_b(dbg, fde, die, cie, virt_addr, code_len,
     symbol_index, 0, 0, error));
}
