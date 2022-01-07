
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dw_err; } ;
typedef TYPE_1__ dwarf_t ;
typedef int Dwarf_Off ;
typedef int Dwarf_Die ;


 scalar_t__ DW_DLV_OK ;
 scalar_t__ dwarf_dieoffset (int ,int *,int *) ;
 int dwarf_errmsg (int ) ;
 int terminate (char*,int ) ;

__attribute__((used)) static Dwarf_Off
die_off(dwarf_t *dw, Dwarf_Die die)
{
 Dwarf_Off off;

 if (dwarf_dieoffset(die, &off, &dw->dw_err) == DW_DLV_OK)
  return (off);

 terminate("failed to get offset for die: %s\n",
     dwarf_errmsg(dw->dw_err));

 return (0);
}
