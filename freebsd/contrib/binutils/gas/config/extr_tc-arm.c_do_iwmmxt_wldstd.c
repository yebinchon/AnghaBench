
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int X_add_number; } ;
struct TYPE_6__ {TYPE_1__ exp; } ;
struct TYPE_8__ {int instruction; TYPE_3__* operands; TYPE_2__ reloc; } ;
struct TYPE_7__ {int reg; int imm; scalar_t__ writeback; int negative; scalar_t__ preind; scalar_t__ immisreg; } ;


 scalar_t__ ARM_CPU_HAS_FEATURE (int ,int ) ;
 int FALSE ;
 int INDEX_UP ;
 int PRE_INDEX ;
 int TRUE ;
 int WRITE_BACK ;
 int arm_cext_iwmmxt2 ;
 int cpu_variant ;
 int encode_arm_cp_address (int,int ,int ,int ) ;
 TYPE_4__ inst ;

__attribute__((used)) static void
do_iwmmxt_wldstd (void)
{
  inst.instruction |= inst.operands[0].reg << 12;
  if (ARM_CPU_HAS_FEATURE (cpu_variant, arm_cext_iwmmxt2)
      && inst.operands[1].immisreg)
    {
      inst.instruction &= ~0x1a000ff;
      inst.instruction |= (0xf << 28);
      if (inst.operands[1].preind)
 inst.instruction |= PRE_INDEX;
      if (!inst.operands[1].negative)
 inst.instruction |= INDEX_UP;
      if (inst.operands[1].writeback)
 inst.instruction |= WRITE_BACK;
      inst.instruction |= inst.operands[1].reg << 16;
      inst.instruction |= inst.reloc.exp.X_add_number << 4;
      inst.instruction |= inst.operands[1].imm;
    }
  else
    encode_arm_cp_address (1, TRUE, FALSE, 0);
}
