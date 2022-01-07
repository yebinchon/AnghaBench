
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int imm; scalar_t__ writeback; } ;


 int LDM_TYPE_2_OR_3 ;
 int LOAD_BIT ;
 int REG_PC ;
 int WRITE_BACK ;
 int _ (char*) ;
 int as_warn (int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_ldmstm (void)
{
  int base_reg = inst.operands[0].reg;
  int range = inst.operands[1].imm;

  inst.instruction |= base_reg << 16;
  inst.instruction |= range;

  if (inst.operands[1].writeback)
    inst.instruction |= LDM_TYPE_2_OR_3;

  if (inst.operands[0].writeback)
    {
      inst.instruction |= WRITE_BACK;

      if (inst.instruction & LOAD_BIT)
 {

   if ((inst.instruction & LDM_TYPE_2_OR_3)
       && ((range & (1 << REG_PC)) == 0))
     as_warn (_("writeback of base register is UNPREDICTABLE"));

   else if (range & (1 << base_reg))
     as_warn (_("writeback of base register when in register list is UNPREDICTABLE"));
 }
      else
 {

   if (inst.instruction & LDM_TYPE_2_OR_3)
     as_warn (_("writeback of base register is UNPREDICTABLE"));

   else if ((range & (1 << base_reg))
     && (range & ((1 << base_reg) - 1)))
     as_warn (_("if writeback register is in list, it must be the lowest reg in the list"));
 }
    }
}
