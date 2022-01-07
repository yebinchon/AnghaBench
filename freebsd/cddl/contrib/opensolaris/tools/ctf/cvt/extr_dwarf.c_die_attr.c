
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dw_err; } ;
typedef TYPE_1__ dwarf_t ;
typedef int Dwarf_Half ;
typedef int Dwarf_Die ;
typedef int * Dwarf_Attribute ;


 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int die_off (TYPE_1__*,int ) ;
 int dwarf_attr (int ,int ,int **,int *) ;
 int dwarf_errmsg (int ) ;
 int terminate (char*,int ,int ) ;

__attribute__((used)) static Dwarf_Attribute
die_attr(dwarf_t *dw, Dwarf_Die die, Dwarf_Half name, int req)
{
 Dwarf_Attribute attr;
 int rc;

 if ((rc = dwarf_attr(die, name, &attr, &dw->dw_err)) == DW_DLV_OK) {
  return (attr);
 } else if (rc == DW_DLV_NO_ENTRY) {
  if (req) {
   terminate("die %llu: no attr 0x%x\n", die_off(dw, die),
       name);
  } else {
   return (((void*)0));
  }
 }

 terminate("die %llu: failed to get attribute for type: %s\n",
     die_off(dw, die), dwarf_errmsg(dw->dw_err));

 return (((void*)0));
}
