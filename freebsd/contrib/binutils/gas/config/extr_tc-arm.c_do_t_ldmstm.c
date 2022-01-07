
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {int instruction; int size_req; TYPE_2__* operands; TYPE_1__ reloc; } ;
struct TYPE_5__ {int writeback; int imm; int reg; } ;


 int BAD_HIREG ;
 scalar_t__ BFD_RELOC_UNUSED ;
 int FALSE ;
 int REG_SP ;
 void* THUMB_OP16 (int) ;
 int THUMB_OP32 (int) ;
 int TRUE ;
 int T_MNEM_ldmia ;
 int T_MNEM_pop ;
 int T_MNEM_push ;
 int T_MNEM_stmia ;
 int _ (char*) ;
 int as_warn (int ,...) ;
 int constraint (int,int ) ;
 int encode_thumb2_ldmstm (int,int,int) ;
 TYPE_3__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_ldmstm (void)
{

  constraint (inst.reloc.type != BFD_RELOC_UNUSED,
       _("expression too complex"));
  constraint (inst.operands[1].writeback,
       _("Thumb load/store multiple does not support {reglist}^"));

  if (unified_syntax)
    {
      bfd_boolean narrow;
      unsigned mask;

      narrow = FALSE;

      if (inst.instruction < 0xffff
   && inst.size_req != 4
   && !(inst.operands[1].imm & ~0xff))
 {
   mask = 1 << inst.operands[0].reg;

   if (inst.operands[0].reg <= 7
       && (inst.instruction == T_MNEM_stmia
    ? inst.operands[0].writeback
    : (inst.operands[0].writeback
       == !(inst.operands[1].imm & mask))))
     {
       if (inst.instruction == T_MNEM_stmia
    && (inst.operands[1].imm & mask)
    && (inst.operands[1].imm & (mask - 1)))
  as_warn (_("value stored for r%d is UNPREDICTABLE"),
    inst.operands[0].reg);

       inst.instruction = THUMB_OP16 (inst.instruction);
       inst.instruction |= inst.operands[0].reg << 8;
       inst.instruction |= inst.operands[1].imm;
       narrow = TRUE;
     }
   else if (inst.operands[0] .reg == REG_SP
     && inst.operands[0].writeback)
     {
       inst.instruction = THUMB_OP16 (inst.instruction == T_MNEM_stmia
          ? T_MNEM_push : T_MNEM_pop);
       inst.instruction |= inst.operands[1].imm;
       narrow = TRUE;
     }
 }

      if (!narrow)
 {
   if (inst.instruction < 0xffff)
     inst.instruction = THUMB_OP32 (inst.instruction);

   encode_thumb2_ldmstm(inst.operands[0].reg, inst.operands[1].imm,
          inst.operands[0].writeback);
 }
    }
  else
    {
      constraint (inst.operands[0].reg > 7
    || (inst.operands[1].imm & ~0xff), BAD_HIREG);
      constraint (inst.instruction != T_MNEM_ldmia
    && inst.instruction != T_MNEM_stmia,
    _("Thumb-2 instruction only valid in unified syntax"));
      if (inst.instruction == T_MNEM_stmia)
 {
   if (!inst.operands[0].writeback)
     as_warn (_("this instruction will write back the base register"));
   if ((inst.operands[1].imm & (1 << inst.operands[0].reg))
       && (inst.operands[1].imm & ((1 << inst.operands[0].reg) - 1)))
     as_warn (_("value stored for r%d is UNPREDICTABLE"),
       inst.operands[0].reg);
 }
      else
 {
   if (!inst.operands[0].writeback
       && !(inst.operands[1].imm & (1 << inst.operands[0].reg)))
     as_warn (_("this instruction will write back the base register"));
   else if (inst.operands[0].writeback
     && (inst.operands[1].imm & (1 << inst.operands[0].reg)))
     as_warn (_("this instruction will not write back the base register"));
 }

      inst.instruction = THUMB_OP16 (inst.instruction);
      inst.instruction |= inst.operands[0].reg << 8;
      inst.instruction |= inst.operands[1].imm;
    }
}
