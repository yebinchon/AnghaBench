
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int VFP_REG_Dd ;
 int VFP_REG_Dm ;
 int VFP_REG_Dn ;
 int encode_arm_vfp_reg (int ,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_vfp_dp_rm_rd_rn (void)
{
  encode_arm_vfp_reg (inst.operands[0].reg, VFP_REG_Dm);
  encode_arm_vfp_reg (inst.operands[1].reg, VFP_REG_Dd);
  encode_arm_vfp_reg (inst.operands[2].reg, VFP_REG_Dn);
}
