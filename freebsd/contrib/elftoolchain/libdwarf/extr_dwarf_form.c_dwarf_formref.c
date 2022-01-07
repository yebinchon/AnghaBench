
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int at_form; TYPE_2__* u; TYPE_1__* at_die; } ;
struct TYPE_6__ {int u64; } ;
struct TYPE_5__ {int * die_dbg; } ;
typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;






int
dwarf_formref(Dwarf_Attribute at, Dwarf_Off *return_offset, Dwarf_Error *error)
{
 int ret;
 Dwarf_Debug dbg;

 dbg = at != ((void*)0) ? at->at_die->die_dbg : ((void*)0);

 if (at == ((void*)0) || return_offset == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 switch (at->at_form) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  *return_offset = (Dwarf_Off) at->u[0].u64;
  ret = DW_DLV_OK;
  break;
 default:
  DWARF_SET_ERROR(dbg, error, DW_DLE_ATTR_FORM_BAD);
  ret = DW_DLV_ERROR;
 }

 return (ret);
}
