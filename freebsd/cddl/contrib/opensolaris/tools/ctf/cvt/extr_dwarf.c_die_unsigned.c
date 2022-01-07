
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dw_err; } ;
typedef TYPE_1__ dwarf_t ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Half ;
typedef int Dwarf_Die ;


 scalar_t__ DW_DLV_OK ;
 int die_off (TYPE_1__*,int ) ;
 scalar_t__ dwarf_attrval_unsigned (int ,int ,scalar_t__*,int *) ;
 int dwarf_errmsg (int ) ;
 int terminate (char*,int ,int ) ;

__attribute__((used)) static int
die_unsigned(dwarf_t *dw, Dwarf_Die die, Dwarf_Half name, Dwarf_Unsigned *valp,
    int req)
{
 *valp = 0;
 if (dwarf_attrval_unsigned(die, name, valp, &dw->dw_err) != DW_DLV_OK) {
  if (req)
   terminate("die %llu: failed to get unsigned: %s\n",
       die_off(dw, die), dwarf_errmsg(dw->dw_err));
  return (0);
 }

 return (1);
}
