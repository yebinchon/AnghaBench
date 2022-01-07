
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int at_form; int at_block; TYPE_1__* at_die; } ;
struct TYPE_4__ {int * die_dbg; } ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef int Dwarf_Block ;
typedef TYPE_2__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;





int
dwarf_formblock(Dwarf_Attribute at, Dwarf_Block **return_block,
    Dwarf_Error *error)
{
 int ret;
 Dwarf_Debug dbg;

 dbg = at != ((void*)0) ? at->at_die->die_dbg : ((void*)0);

 if (at == ((void*)0) || return_block == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 switch (at->at_form) {
 case 131:
 case 130:
 case 129:
 case 128:
  *return_block = &at->at_block;
  ret = DW_DLV_OK;
  break;
 default:
  DWARF_SET_ERROR(dbg, error, DW_DLE_ATTR_FORM_BAD);
  ret = DW_DLV_ERROR;
 }

 return (ret);
}
