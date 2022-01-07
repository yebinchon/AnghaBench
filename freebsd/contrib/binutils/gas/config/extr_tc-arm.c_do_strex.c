
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
struct TYPE_7__ {int type; TYPE_1__ exp; } ;
struct TYPE_8__ {int instruction; TYPE_3__ reloc; TYPE_2__* operands; } ;
struct TYPE_6__ {int reg; scalar_t__ negative; scalar_t__ shifted; scalar_t__ immisreg; scalar_t__ writeback; scalar_t__ postind; int preind; int isreg; } ;


 int BAD_ADDR_MODE ;
 int BAD_OVERLAP ;
 int BFD_RELOC_UNUSED ;
 scalar_t__ O_constant ;
 int REG_PC ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_4__ inst ;

__attribute__((used)) static void
do_strex (void)
{
  constraint (!inst.operands[2].isreg || !inst.operands[2].preind
       || inst.operands[2].postind || inst.operands[2].writeback
       || inst.operands[2].immisreg || inst.operands[2].shifted
       || inst.operands[2].negative

       || (inst.operands[2].reg == REG_PC),
       BAD_ADDR_MODE);

  constraint (inst.operands[0].reg == inst.operands[1].reg
       || inst.operands[0].reg == inst.operands[2].reg, BAD_OVERLAP);

  constraint (inst.reloc.exp.X_op != O_constant
       || inst.reloc.exp.X_add_number != 0,
       _("offset must be zero in ARM encoding"));

  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= inst.operands[1].reg;
  inst.instruction |= inst.operands[2].reg << 16;
  inst.reloc.type = BFD_RELOC_UNUSED;
}
