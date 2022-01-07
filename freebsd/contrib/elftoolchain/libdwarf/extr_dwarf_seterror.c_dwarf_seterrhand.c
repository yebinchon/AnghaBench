
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Handler ;
typedef int Dwarf_Debug ;


 int SET_FIELD (int ,int ,int ) ;

Dwarf_Handler
dwarf_seterrhand(Dwarf_Debug dbg, Dwarf_Handler errhand)
{
 Dwarf_Handler oldhandler;

 SET_FIELD(dbg, oldhandler, errhand);

 return (oldhandler);
}
