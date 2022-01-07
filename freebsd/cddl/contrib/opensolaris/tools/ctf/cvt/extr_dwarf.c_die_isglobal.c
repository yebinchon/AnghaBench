
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwarf_t ;
typedef scalar_t__ Dwarf_Signed ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Bool ;


 int DW_AT_external ;
 int DW_AT_visibility ;
 scalar_t__ DW_VIS_exported ;
 scalar_t__ die_bool (int *,int ,int ,scalar_t__*,int ) ;
 scalar_t__ die_signed (int *,int ,int ,scalar_t__*,int ) ;

__attribute__((used)) static int
die_isglobal(dwarf_t *dw, Dwarf_Die die)
{
 Dwarf_Signed vis;
 Dwarf_Bool ext;





 if (die_signed(dw, die, DW_AT_visibility, &vis, 0))
  return (vis == DW_VIS_exported);
 else
  return (die_bool(dw, die, DW_AT_external, &ext, 0) && ext);
}
