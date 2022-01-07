
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum Dwarf_Form_Class { ____Placeholder_Dwarf_Form_Class } Dwarf_Form_Class ;
struct TYPE_11__ {int at_form; TYPE_1__* u; } ;
struct TYPE_10__ {int cu_length_size; int cu_version; } ;
struct TYPE_9__ {TYPE_3__* die_cu; int * die_dbg; } ;
struct TYPE_8__ {int u64; } ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_CU ;
typedef TYPE_4__* Dwarf_Attribute ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_AT_high_pc ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 TYPE_4__* _dwarf_attr_find (TYPE_2__*,int ) ;
 int dwarf_get_form_class (int ,int ,int,int ) ;

int
dwarf_highpc_b(Dwarf_Die die, Dwarf_Addr *ret_highpc, Dwarf_Half *ret_form,
    enum Dwarf_Form_Class *ret_class, Dwarf_Error *error)
{
 Dwarf_Attribute at;
 Dwarf_Debug dbg;
 Dwarf_CU cu;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || ret_highpc == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if ((at = _dwarf_attr_find(die, DW_AT_high_pc)) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *ret_highpc = at->u[0].u64;

 if (ret_form != ((void*)0)) {
  *ret_form = at->at_form;
 }

 if (ret_class != ((void*)0)) {
  cu = die->die_cu;
  *ret_class = dwarf_get_form_class(cu->cu_version,
      DW_AT_high_pc, cu->cu_length_size == 4 ? 4 : 8,
      at->at_form);
 }

 return (DW_DLV_OK);
}
