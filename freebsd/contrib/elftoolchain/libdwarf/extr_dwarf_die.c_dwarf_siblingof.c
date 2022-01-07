
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Debug ;


 int dwarf_siblingof_b (int ,int ,int *,int,int *) ;

int
dwarf_siblingof(Dwarf_Debug dbg, Dwarf_Die die, Dwarf_Die *ret_die,
    Dwarf_Error *error)
{

 return (dwarf_siblingof_b(dbg, die, ret_die, 1, error));
}
