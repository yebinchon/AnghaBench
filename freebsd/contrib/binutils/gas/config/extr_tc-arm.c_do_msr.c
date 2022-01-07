
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pc_rel; int type; } ;
struct TYPE_6__ {TYPE_1__ reloc; int instruction; TYPE_2__* operands; } ;
struct TYPE_5__ {int reg; scalar_t__ isreg; int imm; } ;


 int BFD_RELOC_ARM_IMMEDIATE ;
 int INST_IMMEDIATE ;
 scalar_t__ SUCCESS ;
 scalar_t__ do_vfp_nsyn_msr () ;
 TYPE_3__ inst ;

__attribute__((used)) static void
do_msr (void)
{
  if (do_vfp_nsyn_msr () == SUCCESS)
    return;

  inst.instruction |= inst.operands[0].imm;
  if (inst.operands[1].isreg)
    inst.instruction |= inst.operands[1].reg;
  else
    {
      inst.instruction |= INST_IMMEDIATE;
      inst.reloc.type = BFD_RELOC_ARM_IMMEDIATE;
      inst.reloc.pc_rel = 0;
    }
}
