
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * ds_data; int ds_size; int ds_ndx; } ;
struct TYPE_6__ {TYPE_3__* dbgp_secpos; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int * Dwarf_Ptr ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 TYPE_3__* STAILQ_NEXT (TYPE_3__*,int ) ;
 int ds_next ;

Dwarf_Ptr
dwarf_get_section_bytes(Dwarf_P_Debug dbg, Dwarf_Signed dwarf_section,
    Dwarf_Signed *elf_section_index, Dwarf_Unsigned *length, Dwarf_Error *error)
{
 Dwarf_Ptr data;

 (void) dwarf_section;

 if (dbg == ((void*)0) || elf_section_index == ((void*)0) || length == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (((void*)0));
 }

 if (dbg->dbgp_secpos == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (((void*)0));
 }

 *elf_section_index = dbg->dbgp_secpos->ds_ndx;
 *length = dbg->dbgp_secpos->ds_size;
 data = dbg->dbgp_secpos->ds_data;

 dbg->dbgp_secpos = STAILQ_NEXT(dbg->dbgp_secpos, ds_next);

 return (data);
}
