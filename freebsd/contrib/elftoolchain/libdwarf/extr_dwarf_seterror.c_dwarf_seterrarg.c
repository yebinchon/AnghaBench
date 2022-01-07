
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Ptr ;
typedef int Dwarf_Debug ;


 int SET_FIELD (int ,int ,int ) ;

Dwarf_Ptr
dwarf_seterrarg(Dwarf_Debug dbg, Dwarf_Ptr errarg)
{
 Dwarf_Ptr oldarg;

 SET_FIELD(dbg, oldarg, errarg);

 return (oldarg);
}
