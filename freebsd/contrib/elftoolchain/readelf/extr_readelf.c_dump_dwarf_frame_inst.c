
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int unk_op ;
typedef char const* uintmax_t ;
typedef int uint8_t ;
struct readelf {int dummy; } ;
typedef char const* intmax_t ;
struct TYPE_4__ {int fp_base_op; int fp_extended_op; int fp_offset; int fp_register; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef int Dwarf_Signed ;
typedef TYPE_1__ Dwarf_Frame_Op ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;
typedef int Dwarf_Cie ;
typedef int Dwarf_Addr ;
 int DW_DLA_FRAME_BLOCK ;
 scalar_t__ DW_DLV_OK ;
 int dwarf_dealloc (int ,TYPE_1__*,int ) ;
 int dwarf_errmsg (int ) ;
 scalar_t__ dwarf_expand_frame_instructions (int ,int *,int,TYPE_1__**,int*,int *) ;
 scalar_t__ dwarf_get_CFA_name (int,char const**) ;
 char* dwarf_regname (struct readelf*,int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int snprintf (char*,int,char*,int) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_dwarf_frame_inst(struct readelf *re, Dwarf_Cie cie, uint8_t *insts,
    Dwarf_Unsigned len, Dwarf_Unsigned caf, Dwarf_Signed daf, Dwarf_Addr pc,
    Dwarf_Debug dbg)
{
 Dwarf_Frame_Op *oplist;
 Dwarf_Signed opcnt, delta;
 Dwarf_Small op;
 Dwarf_Error de;
 const char *op_str;
 char unk_op[32];
 int i;

 if (dwarf_expand_frame_instructions(cie, insts, len, &oplist,
     &opcnt, &de) != DW_DLV_OK) {
  warnx("dwarf_expand_frame_instructions failed: %s",
      dwarf_errmsg(de));
  return;
 }

 for (i = 0; i < opcnt; i++) {
  if (oplist[i].fp_base_op != 0)
   op = oplist[i].fp_base_op << 6;
  else
   op = oplist[i].fp_extended_op;
  if (dwarf_get_CFA_name(op, &op_str) != DW_DLV_OK) {
   snprintf(unk_op, sizeof(unk_op), "[Unknown CFA: %#x]",
       op);
   op_str = unk_op;
  }
  printf("  %s", op_str);
  switch (op) {
  case 141:
   delta = oplist[i].fp_offset * caf;
   pc += delta;
   printf(": %ju to %08jx", (uintmax_t) delta,
       (uintmax_t) pc);
   break;
  case 132:
  case 131:
  case 130:
   delta = oplist[i].fp_offset * daf;
   printf(": r%u (%s) at cfa%+jd", oplist[i].fp_register,
       dwarf_regname(re, oplist[i].fp_register),
       (intmax_t) delta);
   break;
  case 129:
   printf(": r%u (%s)", oplist[i].fp_register,
       dwarf_regname(re, oplist[i].fp_register));
   break;
  case 128:
   pc = oplist[i].fp_offset;
   printf(": to %08jx", (uintmax_t) pc);
   break;
  case 140:
  case 139:
  case 138:
   pc += oplist[i].fp_offset;
   printf(": %jd to %08jx", (intmax_t) oplist[i].fp_offset,
       (uintmax_t) pc);
   break;
  case 137:
   printf(": r%u (%s) ofs %ju", oplist[i].fp_register,
       dwarf_regname(re, oplist[i].fp_register),
       (uintmax_t) oplist[i].fp_offset);
   break;
  case 133:
   printf(": r%u (%s) ofs %jd", oplist[i].fp_register,
       dwarf_regname(re, oplist[i].fp_register),
       (intmax_t) (oplist[i].fp_offset * daf));
   break;
  case 134:
   printf(": r%u (%s)", oplist[i].fp_register,
       dwarf_regname(re, oplist[i].fp_register));
   break;
  case 136:
   printf(": %ju", (uintmax_t) oplist[i].fp_offset);
   break;
  case 135:
   printf(": %jd", (intmax_t) (oplist[i].fp_offset * daf));
   break;
  default:
   break;
  }
  putchar('\n');
 }

 dwarf_dealloc(dbg, oplist, DW_DLA_FRAME_BLOCK);
}
