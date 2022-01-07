
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_6__ {scalar_t__ X_op; int X_add_number; } ;
struct TYPE_7__ {void* type; TYPE_2__ exp; } ;
struct TYPE_8__ {int instruction; int size_req; int relax; TYPE_1__* operands; TYPE_3__ reloc; } ;
struct TYPE_5__ {int reg; int shifted; int isreg; scalar_t__ immisreg; scalar_t__ present; } ;


 int BAD_HIREG ;
 int BAD_THUMB32 ;
 void* BFD_RELOC_ARM_T32_ADD_IMM ;
 void* BFD_RELOC_ARM_T32_IMM12 ;
 void* BFD_RELOC_ARM_T32_IMMEDIATE ;
 void* BFD_RELOC_ARM_THUMB_ADD ;
 void* BFD_RELOC_UNUSED ;
 int FALSE ;
 scalar_t__ O_constant ;
 int REG_LR ;
 int REG_PC ;
 int REG_SP ;
 int T2_SUBS_PC_LR ;
 int THUMB_OP16 (int) ;
 void* THUMB_OP32 (int) ;
 int T_MNEM_add ;
 int T_MNEM_add_pc ;
 int T_MNEM_add_sp ;
 int T_MNEM_addi ;
 int T_MNEM_addis ;
 int T_MNEM_adds ;
 int T_MNEM_dec_sp ;
 int T_MNEM_inc_sp ;
 int T_MNEM_sub ;
 int T_MNEM_subi ;
 int T_MNEM_subis ;
 int T_MNEM_subs ;
 void* T_OPCODE_ADD_HI ;
 void* T_OPCODE_ADD_R3 ;
 void* T_OPCODE_SUB_R3 ;
 int _ (char*) ;
 int constraint (int,int ) ;
 scalar_t__ current_it_mask ;
 int encode_thumb32_shifted_operand (int) ;
 TYPE_4__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_add_sub (void)
{
  int Rd, Rs, Rn;

  Rd = inst.operands[0].reg;
  Rs = (inst.operands[1].present
 ? inst.operands[1].reg
 : inst.operands[0].reg);

  if (unified_syntax)
    {
      bfd_boolean flags;
      bfd_boolean narrow;
      int opcode;

      flags = (inst.instruction == T_MNEM_adds
        || inst.instruction == T_MNEM_subs);
      if (flags)
 narrow = (current_it_mask == 0);
      else
 narrow = (current_it_mask != 0);
      if (!inst.operands[2].isreg)
 {
   int add;

   add = (inst.instruction == T_MNEM_add
   || inst.instruction == T_MNEM_adds);
   opcode = 0;
   if (inst.size_req != 4)
     {


       if (Rd == REG_SP && Rs == REG_SP && !flags)
  opcode = add ? T_MNEM_inc_sp : T_MNEM_dec_sp;
       else if (Rd <= 7 && Rs == REG_SP && add && !flags)
  opcode = T_MNEM_add_sp;
       else if (Rd <= 7 && Rs == REG_PC && add && !flags)
  opcode = T_MNEM_add_pc;
       else if (Rd <= 7 && Rs <= 7 && narrow)
  {
    if (flags)
      opcode = add ? T_MNEM_addis : T_MNEM_subis;
    else
      opcode = add ? T_MNEM_addi : T_MNEM_subi;
  }
       if (opcode)
  {
    inst.instruction = THUMB_OP16(opcode);
    inst.instruction |= (Rd << 4) | Rs;
    inst.reloc.type = BFD_RELOC_ARM_THUMB_ADD;
    if (inst.size_req != 2)
      inst.relax = opcode;
  }
       else
  constraint (inst.size_req == 2, BAD_HIREG);
     }
   if (inst.size_req == 4
       || (inst.size_req != 2 && !opcode))
     {
       if (Rd == REG_PC)
  {
    constraint (Rs != REG_LR || inst.instruction != T_MNEM_subs,
        _("only SUBS PC, LR, #const allowed"));
    constraint (inst.reloc.exp.X_op != O_constant,
         _("expression too complex"));
    constraint (inst.reloc.exp.X_add_number < 0
         || inst.reloc.exp.X_add_number > 0xff,
        _("immediate value out of range"));
    inst.instruction = T2_SUBS_PC_LR
         | inst.reloc.exp.X_add_number;
    inst.reloc.type = BFD_RELOC_UNUSED;
    return;
  }
       else if (Rs == REG_PC)
  {

    inst.instruction = add ? 0xf20f0000 : 0xf2af0000;
    inst.reloc.type = BFD_RELOC_ARM_T32_IMM12;
  }
       else
  {
    inst.instruction = THUMB_OP32 (inst.instruction);
    inst.instruction = (inst.instruction & 0xe1ffffff)
         | 0x10000000;
    if (flags)
      inst.reloc.type = BFD_RELOC_ARM_T32_IMMEDIATE;
    else
      inst.reloc.type = BFD_RELOC_ARM_T32_ADD_IMM;
  }
       inst.instruction |= Rd << 8;
       inst.instruction |= Rs << 16;
     }
 }
      else
 {
   Rn = inst.operands[2].reg;

   if (!inst.operands[2].shifted && inst.size_req != 4)
     {
       if (Rd > 7 || Rs > 7 || Rn > 7)
  narrow = FALSE;

       if (narrow)
  {
    inst.instruction = ((inst.instruction == T_MNEM_adds
           || inst.instruction == T_MNEM_add)
          ? T_OPCODE_ADD_R3
          : T_OPCODE_SUB_R3);
    inst.instruction |= Rd | (Rs << 3) | (Rn << 6);
    return;
  }

       if (inst.instruction == T_MNEM_add)
  {
    if (Rd == Rs)
      {
        inst.instruction = T_OPCODE_ADD_HI;
        inst.instruction |= (Rd & 8) << 4;
        inst.instruction |= (Rd & 7);
        inst.instruction |= Rn << 3;
        return;
      }

    else if (Rd == Rn)
      {
        inst.instruction = T_OPCODE_ADD_HI;
        inst.instruction |= (Rd & 8) << 4;
        inst.instruction |= (Rd & 7);
        inst.instruction |= Rs << 3;
        return;
      }
  }
     }

   constraint (inst.operands[2].shifted && inst.operands[2].immisreg,
        _("shift must be constant"));
   inst.instruction = THUMB_OP32 (inst.instruction);
   inst.instruction |= Rd << 8;
   inst.instruction |= Rs << 16;
   encode_thumb32_shifted_operand (2);
 }
    }
  else
    {
      constraint (inst.instruction == T_MNEM_adds
    || inst.instruction == T_MNEM_subs,
    BAD_THUMB32);

      if (!inst.operands[2].isreg)
 {
   constraint ((Rd > 7 && (Rd != REG_SP || Rs != REG_SP))
        || (Rs > 7 && Rs != REG_SP && Rs != REG_PC),
        BAD_HIREG);

   inst.instruction = (inst.instruction == T_MNEM_add
         ? 0x0000 : 0x8000);
   inst.instruction |= (Rd << 4) | Rs;
   inst.reloc.type = BFD_RELOC_ARM_THUMB_ADD;
   return;
 }

      Rn = inst.operands[2].reg;
      constraint (inst.operands[2].shifted, _("unshifted register required"));


      if (Rd > 7 || Rs > 7 || Rn > 7)
 {

   constraint (inst.instruction == T_MNEM_sub, BAD_HIREG);
   inst.instruction = T_OPCODE_ADD_HI;
   inst.instruction |= (Rd & 8) << 4;
   inst.instruction |= (Rd & 7);
   if (Rs == Rd)
     inst.instruction |= Rn << 3;
   else if (Rn == Rd)
     inst.instruction |= Rs << 3;
   else
     constraint (1, _("dest must overlap one source register"));
 }
      else
 {
   inst.instruction = (inst.instruction == T_MNEM_add
         ? T_OPCODE_ADD_R3 : T_OPCODE_SUB_R3);
   inst.instruction |= Rd | (Rs << 3) | (Rn << 6);
 }
    }
}
