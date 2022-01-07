
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Debug ;


 int dwarf_offdie_b (int ,int ,int,int *,int *) ;

int
dwarf_offdie(Dwarf_Debug dbg, Dwarf_Off offset, Dwarf_Die *ret_die,
    Dwarf_Error *error)
{

 return (dwarf_offdie_b(dbg, offset, 1, ret_die, error));
}
