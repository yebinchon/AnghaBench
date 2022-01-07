
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int dwarf_highpc_b (int ,int *,int *,int *,int *) ;

int
dwarf_highpc(Dwarf_Die die, Dwarf_Addr *ret_highpc, Dwarf_Error *error)
{

 return (dwarf_highpc_b(die, ret_highpc, ((void*)0), ((void*)0), error));
}
