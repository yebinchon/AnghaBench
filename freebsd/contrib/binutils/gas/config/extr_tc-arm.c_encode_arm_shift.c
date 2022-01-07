
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_6__ {int instruction; TYPE_1__ reloc; TYPE_2__* operands; } ;
struct TYPE_5__ {int shift_kind; int imm; scalar_t__ immisreg; } ;


 int BFD_RELOC_ARM_SHIFT_IMM ;
 int SHIFT_BY_REG ;
 int SHIFT_ROR ;
 int SHIFT_RRX ;
 TYPE_3__ inst ;

__attribute__((used)) static void
encode_arm_shift (int i)
{
  if (inst.operands[i].shift_kind == SHIFT_RRX)
    inst.instruction |= SHIFT_ROR << 5;
  else
    {
      inst.instruction |= inst.operands[i].shift_kind << 5;
      if (inst.operands[i].immisreg)
 {
   inst.instruction |= SHIFT_BY_REG;
   inst.instruction |= inst.operands[i].imm << 8;
 }
      else
 inst.reloc.type = BFD_RELOC_ARM_SHIFT_IMM;
    }
}
