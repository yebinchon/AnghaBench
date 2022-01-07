
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; unsigned int imm; int isreg; } ;


 int REG_PC ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_bfi (void)
{
  unsigned int msb;



  if (!inst.operands[1].isreg)
    inst.operands[1].reg = REG_PC;

  msb = inst.operands[2].imm + inst.operands[3].imm;
  constraint (msb > 32, _("bit-field extends past end of register"));


  inst.instruction |= inst.operands[0].reg << 8;
  inst.instruction |= inst.operands[1].reg << 16;
  inst.instruction |= (inst.operands[2].imm & 0x1c) << 10;
  inst.instruction |= (inst.operands[2].imm & 0x03) << 6;
  inst.instruction |= msb - 1;
}
