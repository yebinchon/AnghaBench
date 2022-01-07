
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int reg; } ;


 int VFP_REG_Sm ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int encode_arm_vfp_reg (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_vfp_sp2_from_reg2 (void)
{
  constraint (inst.operands[0].imm != 2,
       _("only two consecutive VFP SP registers allowed here"));
  encode_arm_vfp_reg (inst.operands[0].reg, VFP_REG_Sm);
  inst.instruction |= inst.operands[1].reg << 12;
  inst.instruction |= inst.operands[2].reg << 16;
}
