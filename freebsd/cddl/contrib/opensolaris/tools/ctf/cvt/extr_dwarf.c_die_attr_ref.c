
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dw_err; } ;
typedef TYPE_1__ dwarf_t ;
typedef int Dwarf_Off ;
typedef int Dwarf_Half ;
typedef int Dwarf_Die ;


 scalar_t__ DW_DLV_OK ;
 int die_off (TYPE_1__*,int ) ;
 scalar_t__ dwarf_attrval_unsigned (int ,int ,int *,int *) ;
 int dwarf_errmsg (int ) ;
 int terminate (char*,int ,int ) ;

__attribute__((used)) static Dwarf_Off
die_attr_ref(dwarf_t *dw, Dwarf_Die die, Dwarf_Half name)
{
 Dwarf_Off off;

 if (dwarf_attrval_unsigned(die, name, &off, &dw->dw_err) != DW_DLV_OK) {
  terminate("die %llu: failed to get ref: %s\n",
      die_off(dw, die), dwarf_errmsg(dw->dw_err));
 }

 return (off);
}
