
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int imm; int reg; } ;


 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_bfc (void)
{
  unsigned int msb = inst.operands[1].imm + inst.operands[2].imm;
  constraint (msb > 32, _("bit-field extends past end of register"));


  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= inst.operands[1].imm << 7;
  inst.instruction |= (msb - 1) << 16;
}
