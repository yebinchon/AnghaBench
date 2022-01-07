
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ at_form; TYPE_1__* u; TYPE_2__* at_die; } ;
struct TYPE_9__ {int signature; } ;
struct TYPE_8__ {int * die_dbg; } ;
struct TYPE_7__ {int u64; int u8p; } ;
typedef TYPE_3__ Dwarf_Sig8 ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_4__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_FORM_ref_sig8 ;
 int assert (int) ;
 int memcpy (int ,int ,int) ;

int
dwarf_formsig8(Dwarf_Attribute at, Dwarf_Sig8 *return_sig8, Dwarf_Error *error)
{
 Dwarf_Debug dbg;

 dbg = at != ((void*)0) ? at->at_die->die_dbg : ((void*)0);

 if (at == ((void*)0) || return_sig8 == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (at->at_form != DW_FORM_ref_sig8) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ATTR_FORM_BAD);
  return (DW_DLV_ERROR);
 }

 assert(at->u[0].u64 == 8);
 memcpy(return_sig8->signature, at->u[1].u8p, at->u[0].u64);

 return (DW_DLV_OK);
}
