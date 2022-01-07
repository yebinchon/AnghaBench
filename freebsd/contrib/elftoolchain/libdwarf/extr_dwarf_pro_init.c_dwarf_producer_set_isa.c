
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum Dwarf_ISA { ____Placeholder_Dwarf_ISA } Dwarf_ISA ;
struct TYPE_4__ {int dbgp_isa; } ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int DW_ISA_MAX ;

int
dwarf_producer_set_isa(Dwarf_P_Debug dbg, enum Dwarf_ISA isa,
    Dwarf_Error *error)
{

 if (dbg == ((void*)0) || isa >= DW_ISA_MAX) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 dbg->dbgp_isa = isa;

 return (DW_DLV_OK);
}
