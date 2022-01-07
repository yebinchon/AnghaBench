
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ present; } ;


 int REG_LR ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_ldrexd (void)
{
  constraint (inst.operands[0].reg % 2 != 0,
       _("even register required"));
  constraint (inst.operands[1].present
       && inst.operands[1].reg != inst.operands[0].reg + 1,
       _("can only load two consecutive registers"));


  constraint (inst.operands[0].reg == REG_LR, _("r14 not allowed here"));

  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= inst.operands[2].reg << 16;
}
