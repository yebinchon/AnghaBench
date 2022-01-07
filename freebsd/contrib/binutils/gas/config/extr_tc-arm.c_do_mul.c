
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int present; } ;


 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int _ (char*) ;
 int arm_ext_v6 ;
 int as_tsktsk (int ) ;
 TYPE_2__ inst ;
 int selected_cpu ;

__attribute__((used)) static void
do_mul (void)
{
  if (!inst.operands[2].present)
    inst.operands[2].reg = inst.operands[0].reg;
  inst.instruction |= inst.operands[0].reg << 16;
  inst.instruction |= inst.operands[1].reg;
  inst.instruction |= inst.operands[2].reg << 8;

  if (inst.operands[0].reg == inst.operands[1].reg
      && !ARM_CPU_HAS_FEATURE (selected_cpu, arm_ext_v6))
    as_tsktsk (_("Rd and Rm should be different in mul"));
}
