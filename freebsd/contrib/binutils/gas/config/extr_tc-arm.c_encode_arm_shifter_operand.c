
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ isreg; } ;


 int INST_IMMEDIATE ;
 int encode_arm_shift (int) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
encode_arm_shifter_operand (int i)
{
  if (inst.operands[i].isreg)
    {
      inst.instruction |= inst.operands[i].reg;
      encode_arm_shift (i);
    }
  else
    inst.instruction |= INST_IMMEDIATE;
}
