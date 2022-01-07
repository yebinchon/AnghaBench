
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; scalar_t__ cond; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ isreg; } ;


 int BAD_COND ;
 int BFD_RELOC_ARM_PCREL_BLX ;
 int BFD_RELOC_ARM_PCREL_CALL ;
 scalar_t__ COND_ALWAYS ;
 scalar_t__ EF_ARM_EABI_VER4 ;
 scalar_t__ EF_ARM_EABI_VERSION (int ) ;
 int REG_PC ;
 int _ (char*) ;
 int as_tsktsk (int ) ;
 int constraint (int,int ) ;
 int encode_branch (int ) ;
 TYPE_2__ inst ;
 int meabi_flags ;

__attribute__((used)) static void
do_blx (void)
{
  if (inst.operands[0].isreg)
    {


      if (inst.operands[0].reg == REG_PC)
 as_tsktsk (_("use of r15 in blx in ARM mode is not really useful"));

      inst.instruction |= inst.operands[0].reg;
    }
  else
    {


      constraint (inst.cond != COND_ALWAYS, BAD_COND);
      inst.instruction = 0xfa000000;





 encode_branch (BFD_RELOC_ARM_PCREL_BLX);
    }
}
