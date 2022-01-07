
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int at_form; TYPE_1__* at_die; } ;
struct TYPE_4__ {int * die_dbg; } ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_2__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_whatform(Dwarf_Attribute at, Dwarf_Half *return_form, Dwarf_Error *error)
{
 Dwarf_Debug dbg;

 dbg = at != ((void*)0) ? at->at_die->die_dbg : ((void*)0);

 if (at == ((void*)0) || return_form == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *return_form = at->at_form;

 return (DW_DLV_OK);
}
