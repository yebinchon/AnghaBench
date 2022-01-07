
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ imm; scalar_t__ immisreg; scalar_t__ postind; scalar_t__ writeback; scalar_t__ present; int isreg; } ;


 int FALSE ;
 int LOAD_BIT ;
 int REG_LR ;
 int _ (char*) ;
 int as_warn (int ) ;
 int constraint (int,int ) ;
 int encode_arm_addr_mode_3 (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_ldrd (void)
{
  constraint (inst.operands[0].reg % 2 != 0,
       _("first destination register must be even"));
  constraint (inst.operands[1].present
       && inst.operands[1].reg != inst.operands[0].reg + 1,
       _("can only load two consecutive registers"));
  constraint (inst.operands[0].reg == REG_LR, _("r14 not allowed here"));
  constraint (!inst.operands[2].isreg, _("'[' expected"));

  if (!inst.operands[1].present)
    inst.operands[1].reg = inst.operands[0].reg + 1;

  if (inst.instruction & LOAD_BIT)
    {




      if (inst.operands[2].reg == inst.operands[1].reg
   && (inst.operands[2].writeback || inst.operands[2].postind))
 as_warn (_("base register written back, and overlaps "
     "second destination register"));



      else if (inst.operands[2].immisreg
        && ((unsigned) inst.operands[2].imm == inst.operands[0].reg
     || (unsigned) inst.operands[2].imm == inst.operands[1].reg))
 as_warn (_("index register overlaps destination register"));
    }

  inst.instruction |= inst.operands[0].reg << 12;
  encode_arm_addr_mode_3 (2, FALSE);
}
