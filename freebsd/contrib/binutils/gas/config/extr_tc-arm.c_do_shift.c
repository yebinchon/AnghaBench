
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_6__ {int instruction; TYPE_1__ reloc; TYPE_2__* operands; } ;
struct TYPE_5__ {unsigned int reg; scalar_t__ isreg; scalar_t__ present; } ;


 int BFD_RELOC_ARM_SHIFT_IMM ;
 int SHIFT_BY_REG ;
 TYPE_3__ inst ;

__attribute__((used)) static void
do_shift (void)
{
  unsigned int Rm = (inst.operands[1].present
       ? inst.operands[1].reg
       : inst.operands[0].reg);

  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= Rm;
  if (inst.operands[2].isreg)
    {
      inst.instruction |= inst.operands[2].reg << 8;
      inst.instruction |= SHIFT_BY_REG;
    }
  else
    inst.reloc.type = BFD_RELOC_ARM_SHIFT_IMM;
}
