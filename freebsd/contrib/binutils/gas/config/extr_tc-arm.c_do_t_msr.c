
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int reg; int isreg; } ;


 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int PSR_f ;
 int SPSR_BIT ;
 scalar_t__ SUCCESS ;
 int _ (char*) ;
 int arm_ext_v1 ;
 int arm_ext_v7m ;
 int constraint (int,int ) ;
 int cpu_variant ;
 scalar_t__ do_vfp_nsyn_msr () ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_msr (void)
{
  int flags;

  if (do_vfp_nsyn_msr () == SUCCESS)
    return;

  constraint (!inst.operands[1].isreg,
       _("Thumb encoding does not support an immediate here"));
  flags = inst.operands[0].imm;
  if (flags & ~0xff)
    {
      constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_ext_v1),
    _("selected processor does not support "
      "requested special purpose register"));
    }
  else
    {
      constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_ext_v7m),
    _("selected processor does not support "
      "requested special purpose register"));
      flags |= PSR_f;
    }
  inst.instruction |= (flags & SPSR_BIT) >> 2;
  inst.instruction |= (flags & ~SPSR_BIT) >> 8;
  inst.instruction |= (flags & 0xff);
  inst.instruction |= inst.operands[1].reg << 16;
}
