
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwarf_t ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Bool ;


 int DW_AT_declaration ;
 scalar_t__ die_bool (int *,int ,int ,scalar_t__*,int ) ;

__attribute__((used)) static int
die_isdecl(dwarf_t *dw, Dwarf_Die die)
{
 Dwarf_Bool val;

 return (die_bool(dw, die, DW_AT_declaration, &val, 0) && val);
}
