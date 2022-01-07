
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cond; int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ present; } ;


 scalar_t__ COND_ALWAYS ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_bkpt (void)
{
  constraint (inst.cond != COND_ALWAYS,
       _("instruction is always unconditional"));
  if (inst.operands[0].present)
    {
      constraint (inst.operands[0].imm > 255,
    _("immediate value out of range"));
      inst.instruction |= inst.operands[0].imm;
    }
}
