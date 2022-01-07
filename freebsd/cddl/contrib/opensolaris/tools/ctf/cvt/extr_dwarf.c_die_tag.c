
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dw_err; } ;
typedef TYPE_1__ dwarf_t ;
typedef int Dwarf_Half ;
typedef int Dwarf_Die ;


 scalar_t__ DW_DLV_OK ;
 int die_off (TYPE_1__*,int ) ;
 int dwarf_errmsg (int ) ;
 scalar_t__ dwarf_tag (int ,int *,int *) ;
 int terminate (char*,int ,int ) ;

__attribute__((used)) static Dwarf_Half
die_tag(dwarf_t *dw, Dwarf_Die die)
{
 Dwarf_Half tag;

 if (dwarf_tag(die, &tag, &dw->dw_err) == DW_DLV_OK)
  return (tag);

 terminate("die %llu: failed to get tag for type: %s\n",
     die_off(dw, die), dwarf_errmsg(dw->dw_err));

 return (0);
}
