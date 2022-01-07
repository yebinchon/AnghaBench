
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dbg_iface; } ;
struct TYPE_7__ {int * eo_elf; } ;
struct TYPE_6__ {TYPE_2__* object; } ;
typedef int Elf ;
typedef int Dwarf_Error ;
typedef TYPE_2__ Dwarf_Elf_Object ;
typedef TYPE_3__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_3__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_get_elf(Dwarf_Debug dbg, Elf **elf, Dwarf_Error *error)
{
 Dwarf_Elf_Object *e;

 if (dbg == ((void*)0) || elf == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 e = dbg->dbg_iface->object;
 *elf = e->eo_elf;

 return (DW_DLV_OK);
}
