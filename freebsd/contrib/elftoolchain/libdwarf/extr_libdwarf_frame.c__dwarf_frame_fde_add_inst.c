
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int dbg_pointer_size; } ;
struct TYPE_5__ {scalar_t__ fde_instcap; int * fde_inst; scalar_t__ fde_instlen; TYPE_2__* fde_dbg; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef TYPE_1__* Dwarf_P_Fde ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int) ;







 int DW_CFA_nop ;
 int DW_DLE_FRAME_INSTR_EXEC_ERROR ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int RCHECK (int ) ;
 int WRITE_ULEB128 (int) ;
 int WRITE_VALUE (int,int) ;
 scalar_t__ _FDE_INST_INIT_SIZE ;
 int assert (int) ;
 int * malloc (size_t) ;

int
_dwarf_frame_fde_add_inst(Dwarf_P_Fde fde, Dwarf_Small op, Dwarf_Unsigned val1,
    Dwarf_Unsigned val2, Dwarf_Error *error)
{
 Dwarf_P_Debug dbg;
 uint8_t high2, low6;
 int ret;






 assert(fde != ((void*)0) && fde->fde_dbg != ((void*)0));
 dbg = fde->fde_dbg;

 if (fde->fde_inst == ((void*)0)) {
  fde->fde_instcap = _FDE_INST_INIT_SIZE;
  fde->fde_instlen = 0;
  if ((fde->fde_inst = malloc((size_t) fde->fde_instcap)) ==
      ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
 }
 assert(fde->fde_instcap != 0);

 RCHECK(WRITE_VALUE(op, 1));
 if (op == DW_CFA_nop)
  return (DW_DLE_NONE);

 high2 = op & 0xc0;
 low6 = op & 0x3f;

 if (high2 > 0) {
  switch (high2) {
  case 144:
  case 133:
   break;
  case 137:
   RCHECK(WRITE_ULEB128(val1));
   break;
  default:
   DWARF_SET_ERROR(dbg, error,
       DW_DLE_FRAME_INSTR_EXEC_ERROR);
   return (DW_DLE_FRAME_INSTR_EXEC_ERROR);
  }
  return (DW_DLE_NONE);
 }

 switch (low6) {
 case 129:
  RCHECK(WRITE_VALUE(val1, dbg->dbg_pointer_size));
  break;
 case 143:
  RCHECK(WRITE_VALUE(val1, 1));
  break;
 case 142:
  RCHECK(WRITE_VALUE(val1, 2));
  break;
 case 141:
  RCHECK(WRITE_VALUE(val1, 4));
  break;
 case 136:
 case 140:
 case 135:
  RCHECK(WRITE_ULEB128(val1));
  RCHECK(WRITE_ULEB128(val2));
  break;
 case 132:
 case 128:
 case 130:
 case 138:
 case 139:
  RCHECK(WRITE_ULEB128(val1));
  break;
 case 134:
 case 131:
  break;
 default:
  DWARF_SET_ERROR(dbg, error, DW_DLE_FRAME_INSTR_EXEC_ERROR);
  return (DW_DLE_FRAME_INSTR_EXEC_ERROR);
 }

 return (DW_DLE_NONE);

gen_fail:
 return (ret);





}
