
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {void* type; } ;
struct TYPE_6__ {unsigned long instruction; int size_req; unsigned long relax; TYPE_1__ reloc; TYPE_2__* operands; } ;
struct TYPE_5__ {int reg; int imm; int shift_kind; scalar_t__ isreg; scalar_t__ shifted; scalar_t__ immisreg; } ;


 void* BFD_RELOC_ARM_T32_IMMEDIATE ;
 void* BFD_RELOC_ARM_THUMB_IMM ;
 void* BFD_RELOC_ARM_THUMB_SHIFT ;
 int CONDS_BIT ;
 int FALSE ;
 int REG_LR ;
 int REG_PC ;




 unsigned long T2_SUBS_PC_LR ;
 void* THUMB_OP16 (unsigned long) ;
 void* THUMB_OP32 (int) ;
 int T_MNEM_asr ;

 int T_MNEM_lsl ;
 int T_MNEM_lsr ;


 int T_MNEM_ror ;
 void* T_OPCODE_ADD_I3 ;
 unsigned long T_OPCODE_ASR_I ;
 void* T_OPCODE_ASR_R ;
 void* T_OPCODE_CMP_HR ;
 void* T_OPCODE_CMP_LR ;
 unsigned long T_OPCODE_LSL_I ;
 void* T_OPCODE_LSL_R ;
 unsigned long T_OPCODE_LSR_I ;
 void* T_OPCODE_LSR_R ;
 void* T_OPCODE_MOV_HR ;
 unsigned long T_OPCODE_MOV_I8 ;
 void* T_OPCODE_ROR_R ;
 int _ (char*) ;
 int abort () ;
 int constraint (int,int ) ;
 scalar_t__ current_it_mask ;
 int do_t_cpy () ;
 int encode_thumb32_shifted_operand (int) ;
 TYPE_3__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_mov_cmp (void)
{
  if (unified_syntax)
    {
      int r0off = (inst.instruction == 129
     || inst.instruction == 128) ? 8 : 16;
      unsigned long opcode;
      bfd_boolean narrow;
      bfd_boolean low_regs;

      low_regs = (inst.operands[0].reg <= 7 && inst.operands[1].reg <= 7);
      opcode = inst.instruction;
      if (current_it_mask)
 narrow = opcode != 128;
      else
 narrow = opcode != 128 || low_regs;
      if (inst.size_req == 4
   || inst.operands[1].shifted)
 narrow = FALSE;


      if (opcode == 128 && inst.operands[1].isreg
   && !inst.operands[1].shifted
   && inst.operands[0].reg == REG_PC
   && inst.operands[1].reg == REG_LR)
 {
   inst.instruction = T2_SUBS_PC_LR;
   return;
 }

      if (!inst.operands[1].isreg)
 {

   if (current_it_mask == 0 && opcode == 129)
     narrow = 0;
   if (low_regs && narrow)
     {
       inst.instruction = THUMB_OP16 (opcode);
       inst.instruction |= inst.operands[0].reg << 8;
       if (inst.size_req == 2)
  inst.reloc.type = BFD_RELOC_ARM_THUMB_IMM;
       else
  inst.relax = opcode;
     }
   else
     {
       inst.instruction = THUMB_OP32 (inst.instruction);
       inst.instruction = (inst.instruction & 0xe1ffffff) | 0x10000000;
       inst.instruction |= inst.operands[0].reg << r0off;
       inst.reloc.type = BFD_RELOC_ARM_T32_IMMEDIATE;
     }
 }
      else if (inst.operands[1].shifted && inst.operands[1].immisreg
        && (inst.instruction == 129
     || inst.instruction == 128))
 {

   bfd_boolean flags = (inst.instruction == 128);

   if (current_it_mask)
     narrow = !flags;
   else
     narrow = flags;

   if (inst.size_req == 4)
     narrow = FALSE;

   if (!low_regs || inst.operands[1].imm > 7)
     narrow = FALSE;

   if (inst.operands[0].reg != inst.operands[1].reg)
     narrow = FALSE;

   switch (inst.operands[1].shift_kind)
     {
     case 133:
       opcode = narrow ? T_OPCODE_LSL_R : THUMB_OP32 (T_MNEM_lsl);
       break;
     case 134:
       opcode = narrow ? T_OPCODE_ASR_R : THUMB_OP32 (T_MNEM_asr);
       break;
     case 132:
       opcode = narrow ? T_OPCODE_LSR_R : THUMB_OP32 (T_MNEM_lsr);
       break;
     case 131:
       opcode = narrow ? T_OPCODE_ROR_R : THUMB_OP32 (T_MNEM_ror);
       break;
     default:
       abort();
     }

   inst.instruction = opcode;
   if (narrow)
     {
       inst.instruction |= inst.operands[0].reg;
       inst.instruction |= inst.operands[1].imm << 3;
     }
   else
     {
       if (flags)
  inst.instruction |= CONDS_BIT;

       inst.instruction |= inst.operands[0].reg << 8;
       inst.instruction |= inst.operands[1].reg << 16;
       inst.instruction |= inst.operands[1].imm;
     }
 }
      else if (!narrow)
 {


   if (low_regs && inst.operands[1].shifted
       && (inst.instruction == 129
    || inst.instruction == 128))
     {
       if (current_it_mask)
  narrow = (inst.instruction == 129);
       else
  narrow = (inst.instruction == 128);
     }

   if (narrow)
     {
       switch (inst.operands[1].shift_kind)
  {
  case 133: inst.instruction = T_OPCODE_LSL_I; break;
  case 132: inst.instruction = T_OPCODE_LSR_I; break;
  case 134: inst.instruction = T_OPCODE_ASR_I; break;
  default: narrow = FALSE; break;
  }
     }

   if (narrow)
     {
       inst.instruction |= inst.operands[0].reg;
       inst.instruction |= inst.operands[1].reg << 3;
       inst.reloc.type = BFD_RELOC_ARM_THUMB_SHIFT;
     }
   else
     {
       inst.instruction = THUMB_OP32 (inst.instruction);
       inst.instruction |= inst.operands[0].reg << r0off;
       encode_thumb32_shifted_operand (1);
     }
 }
      else
 switch (inst.instruction)
   {
   case 129:
     inst.instruction = T_OPCODE_MOV_HR;
     inst.instruction |= (inst.operands[0].reg & 0x8) << 4;
     inst.instruction |= (inst.operands[0].reg & 0x7);
     inst.instruction |= inst.operands[1].reg << 3;
     break;

   case 128:


     inst.instruction = T_OPCODE_ADD_I3;
     inst.instruction |= inst.operands[0].reg;
     inst.instruction |= inst.operands[1].reg << 3;
     break;

   case 130:
     if (low_regs)
       {
  inst.instruction = T_OPCODE_CMP_LR;
  inst.instruction |= inst.operands[0].reg;
  inst.instruction |= inst.operands[1].reg << 3;
       }
     else
       {
  inst.instruction = T_OPCODE_CMP_HR;
  inst.instruction |= (inst.operands[0].reg & 0x8) << 4;
  inst.instruction |= (inst.operands[0].reg & 0x7);
  inst.instruction |= inst.operands[1].reg << 3;
       }
     break;
   }
      return;
    }

  inst.instruction = THUMB_OP16 (inst.instruction);
  if (inst.operands[1].isreg)
    {
      if (inst.operands[0].reg < 8 && inst.operands[1].reg < 8)
 {


   if (inst.instruction == T_OPCODE_MOV_I8)
     inst.instruction = T_OPCODE_ADD_I3;
   else
     inst.instruction = T_OPCODE_CMP_LR;

   inst.instruction |= inst.operands[0].reg;
   inst.instruction |= inst.operands[1].reg << 3;
 }
      else
 {
   if (inst.instruction == T_OPCODE_MOV_I8)
     inst.instruction = T_OPCODE_MOV_HR;
   else
     inst.instruction = T_OPCODE_CMP_HR;
   do_t_cpy ();
 }
    }
  else
    {
      constraint (inst.operands[0].reg > 7,
    _("only lo regs allowed with immediate"));
      inst.instruction |= inst.operands[0].reg << 8;
      inst.reloc.type = BFD_RELOC_ARM_THUMB_IMM;
    }
}
