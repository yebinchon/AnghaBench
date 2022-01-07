
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int immisreg; int imm; int reg; scalar_t__ shifted; } ;


 int BAD_BRANCH ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int current_it_mask ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_tb (void)
{
  int half;

  half = (inst.instruction & 0x10) != 0;
  constraint (current_it_mask && current_it_mask != 0x10, BAD_BRANCH);
  constraint (inst.operands[0].immisreg,
       _("instruction requires register index"));
  constraint (inst.operands[0].imm == 15,
       _("PC is not a valid index register"));
  constraint (!half && inst.operands[0].shifted,
       _("instruction does not allow shifted index"));
  inst.instruction |= (inst.operands[0].reg << 16) | inst.operands[0].imm;
}
