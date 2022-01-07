
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int reg; } ;


 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int PSR_c ;
 int PSR_f ;
 int PSR_s ;
 int PSR_x ;
 int SPSR_BIT ;
 scalar_t__ SUCCESS ;
 int _ (char*) ;
 int arm_ext_v1 ;
 int arm_ext_v7m ;
 int constraint (int,int ) ;
 int cpu_variant ;
 scalar_t__ do_vfp_nsyn_mrs () ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_mrs (void)
{
  int flags;

  if (do_vfp_nsyn_mrs () == SUCCESS)
    return;

  flags = inst.operands[1].imm & (PSR_c|PSR_x|PSR_s|PSR_f|SPSR_BIT);
  if (flags == 0)
    {
      constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_ext_v7m),
    _("selected processor does not support "
      "requested special purpose register"));
    }
  else
    {
      constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_ext_v1),
    _("selected processor does not support "
      "requested special purpose register %x"));

      constraint ((flags & ~SPSR_BIT) != (PSR_c|PSR_f),
    _("'CPSR' or 'SPSR' expected"));
    }

  inst.instruction |= inst.operands[0].reg << 8;
  inst.instruction |= (flags & SPSR_BIT) >> 2;
  inst.instruction |= inst.operands[1].imm & 0xff;
}
