
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int imm; scalar_t__ isvec; } ;


 TYPE_2__ inst ;

__attribute__((used)) static void
do_co_reg (void)
{
  inst.instruction |= inst.operands[0].reg << 8;
  inst.instruction |= inst.operands[1].imm << 21;

  if (inst.operands[2].isvec != 0)
    inst.instruction |= 15 << 12;
  else
    inst.instruction |= inst.operands[2].reg << 12;
  inst.instruction |= inst.operands[3].reg << 16;
  inst.instruction |= inst.operands[4].reg;
  inst.instruction |= inst.operands[5].imm << 5;
}
