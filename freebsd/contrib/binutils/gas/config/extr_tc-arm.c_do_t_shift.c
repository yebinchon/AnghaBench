
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {void* type; } ;
struct TYPE_6__ {int instruction; int size_req; TYPE_2__* operands; TYPE_1__ reloc; int error; } ;
struct TYPE_5__ {int reg; int shifted; int shift_kind; scalar_t__ isreg; int present; } ;


 int BAD_HIREG ;
 int BAD_THUMB32 ;
 void* BFD_RELOC_ARM_THUMB_SHIFT ;
 void* BFD_RELOC_UNUSED ;
 int FALSE ;




 void* THUMB_OP32 (int) ;
 int THUMB_SETS_FLAGS (int) ;






 int T_MNEM_mov ;
 int T_MNEM_movs ;


 void* T_OPCODE_ASR_I ;
 void* T_OPCODE_ASR_R ;
 void* T_OPCODE_LSL_I ;
 void* T_OPCODE_LSL_R ;
 void* T_OPCODE_LSR_I ;
 void* T_OPCODE_LSR_R ;
 void* T_OPCODE_ROR_R ;
 int _ (char*) ;
 int abort () ;
 int constraint (int,int ) ;
 scalar_t__ current_it_mask ;
 int encode_thumb32_shifted_operand (int) ;
 TYPE_3__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_shift (void)
{
  if (!inst.operands[1].present)
    inst.operands[1].reg = inst.operands[0].reg;

  if (unified_syntax)
    {
      bfd_boolean narrow;
      int shift_kind;

      switch (inst.instruction)
 {
 case 135:
 case 134: shift_kind = 139; break;
 case 133:
 case 132: shift_kind = 138; break;
 case 131:
 case 130: shift_kind = 137; break;
 case 129:
 case 128: shift_kind = 136; break;
 default: abort ();
 }

      if (THUMB_SETS_FLAGS (inst.instruction))
 narrow = (current_it_mask == 0);
      else
 narrow = (current_it_mask != 0);
      if (inst.operands[0].reg > 7 || inst.operands[1].reg > 7)
 narrow = FALSE;
      if (!inst.operands[2].isreg && shift_kind == 136)
 narrow = FALSE;
      if (inst.operands[2].isreg
   && (inst.operands[1].reg != inst.operands[0].reg
       || inst.operands[2].reg > 7))
 narrow = FALSE;
      if (inst.size_req == 4)
 narrow = FALSE;

      if (!narrow)
 {
   if (inst.operands[2].isreg)
     {
       inst.instruction = THUMB_OP32 (inst.instruction);
       inst.instruction |= inst.operands[0].reg << 8;
       inst.instruction |= inst.operands[1].reg << 16;
       inst.instruction |= inst.operands[2].reg;
     }
   else
     {
       inst.operands[1].shifted = 1;
       inst.operands[1].shift_kind = shift_kind;
       inst.instruction = THUMB_OP32 (THUMB_SETS_FLAGS (inst.instruction)
          ? T_MNEM_movs : T_MNEM_mov);
       inst.instruction |= inst.operands[0].reg << 8;
       encode_thumb32_shifted_operand (1);

       inst.reloc.type = BFD_RELOC_UNUSED;
     }
 }
      else
 {
   if (inst.operands[2].isreg)
     {
       switch (shift_kind)
  {
  case 139: inst.instruction = T_OPCODE_ASR_R; break;
  case 138: inst.instruction = T_OPCODE_LSL_R; break;
  case 137: inst.instruction = T_OPCODE_LSR_R; break;
  case 136: inst.instruction = T_OPCODE_ROR_R; break;
  default: abort ();
  }

       inst.instruction |= inst.operands[0].reg;
       inst.instruction |= inst.operands[2].reg << 3;
     }
   else
     {
       switch (shift_kind)
  {
  case 139: inst.instruction = T_OPCODE_ASR_I; break;
  case 138: inst.instruction = T_OPCODE_LSL_I; break;
  case 137: inst.instruction = T_OPCODE_LSR_I; break;
  default: abort ();
  }
       inst.reloc.type = BFD_RELOC_ARM_THUMB_SHIFT;
       inst.instruction |= inst.operands[0].reg;
       inst.instruction |= inst.operands[1].reg << 3;
     }
 }
    }
  else
    {
      constraint (inst.operands[0].reg > 7
    || inst.operands[1].reg > 7, BAD_HIREG);
      constraint (THUMB_SETS_FLAGS (inst.instruction), BAD_THUMB32);

      if (inst.operands[2].isreg)
 {
   constraint (inst.operands[2].reg > 7, BAD_HIREG);
   constraint (inst.operands[0].reg != inst.operands[1].reg,
        _("source1 and dest must be same register"));

   switch (inst.instruction)
     {
     case 135: inst.instruction = T_OPCODE_ASR_R; break;
     case 133: inst.instruction = T_OPCODE_LSL_R; break;
     case 131: inst.instruction = T_OPCODE_LSR_R; break;
     case 129: inst.instruction = T_OPCODE_ROR_R; break;
     default: abort ();
     }

   inst.instruction |= inst.operands[0].reg;
   inst.instruction |= inst.operands[2].reg << 3;
 }
      else
 {
   switch (inst.instruction)
     {
     case 135: inst.instruction = T_OPCODE_ASR_I; break;
     case 133: inst.instruction = T_OPCODE_LSL_I; break;
     case 131: inst.instruction = T_OPCODE_LSR_I; break;
     case 129: inst.error = _("ror #imm not supported"); return;
     default: abort ();
     }
   inst.reloc.type = BFD_RELOC_ARM_THUMB_SHIFT;
   inst.instruction |= inst.operands[0].reg;
   inst.instruction |= inst.operands[1].reg << 3;
 }
    }
}
