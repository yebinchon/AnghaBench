
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ at_form; TYPE_2__* u; TYPE_1__* at_die; } ;
struct TYPE_6__ {int u64; } ;
struct TYPE_5__ {int * die_dbg; } ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_Attribute ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_FORM_addr ;

int
dwarf_formaddr(Dwarf_Attribute at, Dwarf_Addr *return_addr, Dwarf_Error *error)
{
 int ret;
 Dwarf_Debug dbg;

 dbg = at != ((void*)0) ? at->at_die->die_dbg : ((void*)0);

 if (at == ((void*)0) || return_addr == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (at->at_form == DW_FORM_addr) {
  *return_addr = at->u[0].u64;
  ret = DW_DLV_OK;
 } else {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ATTR_FORM_BAD);
  ret = DW_DLV_ERROR;
 }

 return (ret);
}
