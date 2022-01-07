
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_6__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
struct TYPE_7__ {int type; TYPE_2__ exp; } ;
struct TYPE_8__ {int instruction; int size_req; TYPE_3__ reloc; TYPE_1__* operands; } ;
struct TYPE_5__ {int reg; int isreg; scalar_t__ present; } ;


 int BFD_RELOC_ARM_T32_IMMEDIATE ;
 int BFD_RELOC_UNUSED ;
 int FALSE ;
 scalar_t__ O_constant ;
 int THUMB_OP16 (int ) ;
 int T_MNEM_negs ;
 scalar_t__ current_it_mask ;
 int encode_thumb32_shifted_operand (int) ;
 TYPE_4__ inst ;
 int unified_syntax ;

__attribute__((used)) static void
do_t_rsb (void)
{
  int Rd, Rs;

  Rd = inst.operands[0].reg;
  Rs = (inst.operands[1].present
 ? inst.operands[1].reg
 : inst.operands[0].reg);

  inst.instruction |= Rd << 8;
  inst.instruction |= Rs << 16;
  if (!inst.operands[2].isreg)
    {
      bfd_boolean narrow;

      if ((inst.instruction & 0x00100000) != 0)
 narrow = (current_it_mask == 0);
      else
 narrow = (current_it_mask != 0);

      if (Rd > 7 || Rs > 7)
 narrow = FALSE;

      if (inst.size_req == 4 || !unified_syntax)
 narrow = FALSE;

      if (inst.reloc.exp.X_op != O_constant
   || inst.reloc.exp.X_add_number != 0)
 narrow = FALSE;



      if (narrow)
 {
   inst.reloc.type = BFD_RELOC_UNUSED;
   inst.instruction = THUMB_OP16 (T_MNEM_negs);
   inst.instruction |= Rs << 3;
   inst.instruction |= Rd;
 }
      else
 {
   inst.instruction = (inst.instruction & 0xe1ffffff) | 0x10000000;
   inst.reloc.type = BFD_RELOC_ARM_T32_IMMEDIATE;
 }
    }
  else
    encode_thumb32_shifted_operand (2);
}
