
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ isreg; } ;


 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int _ (char*) ;
 int arm_cext_iwmmxt2 ;
 int constraint (int,int ) ;
 int cpu_variant ;
 int do_rd_rn () ;
 int do_rd_rn_rm () ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_iwmmxt_wrwrwr_or_imm5 (void)
{
  if (inst.operands[2].isreg)
    do_rd_rn_rm ();
  else {
    constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_cext_iwmmxt2),
  _("immediate operand requires iWMMXt2"));
    do_rd_rn ();
    if (inst.operands[2].imm == 0)
      {
 switch ((inst.instruction >> 20) & 0xf)
   {
   case 4:
   case 5:
   case 6:
   case 7:

     inst.operands[2].imm = 16;
     inst.instruction = (inst.instruction & 0xff0fffff) | (0x7 << 20);
     break;
   case 8:
   case 9:
   case 10:
   case 11:

     inst.operands[2].imm = 32;
     inst.instruction = (inst.instruction & 0xff0fffff) | (0xb << 20);
     break;
   case 12:
   case 13:
   case 14:
   case 15:
     {

       unsigned long wrn;
       wrn = (inst.instruction >> 16) & 0xf;
       inst.instruction &= 0xff0fff0f;
       inst.instruction |= wrn;

       return;
     }
   }
      }

    inst.operands[2].imm &= 0x1f;
    inst.instruction |= (0xf << 28) | ((inst.operands[2].imm & 0x10) << 4) | (inst.operands[2].imm & 0xf);
  }
}
