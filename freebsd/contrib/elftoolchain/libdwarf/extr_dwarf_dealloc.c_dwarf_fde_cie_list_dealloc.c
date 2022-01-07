
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Signed ;
typedef int Dwarf_Fde ;
typedef int Dwarf_Debug ;
typedef int Dwarf_Cie ;



void
dwarf_fde_cie_list_dealloc(Dwarf_Debug dbg, Dwarf_Cie *cie_list,
    Dwarf_Signed cie_count, Dwarf_Fde *fde_list, Dwarf_Signed fde_count)
{





 (void) dbg;
 (void) cie_list;
 (void) cie_count;
 (void) fde_list;
 (void) fde_count;
}
