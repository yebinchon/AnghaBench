
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int imm; scalar_t__ writeback; scalar_t__ present; } ;


 int WRITE_BACK ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_srs (void)
{
  int reg;

  if (inst.operands[0].present)
    {
      reg = inst.operands[0].reg;
      constraint (reg != 13, _("SRS base register must be r13"));
    }
  else
    reg = 13;

  inst.instruction |= reg << 16;
  inst.instruction |= inst.operands[1].imm;
  if (inst.operands[0].writeback || inst.operands[1].writeback)
    inst.instruction |= WRITE_BACK;
}
