
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum vfp_ldstm_type { ____Placeholder_vfp_ldstm_type } vfp_ldstm_type ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int imm; scalar_t__ writeback; } ;


 int VFP_LDSTMDBX ;
 int VFP_LDSTMIA ;
 int VFP_LDSTMIAX ;
 int VFP_REG_Dd ;
 int WRITE_BACK ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int encode_arm_vfp_reg (int,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
vfp_dp_ldstm (enum vfp_ldstm_type ldstm_type)
{
  int count;

  if (inst.operands[0].writeback)
    inst.instruction |= WRITE_BACK;
  else
    constraint (ldstm_type != VFP_LDSTMIA && ldstm_type != VFP_LDSTMIAX,
  _("this addressing mode requires base-register writeback"));

  inst.instruction |= inst.operands[0].reg << 16;
  encode_arm_vfp_reg (inst.operands[1].reg, VFP_REG_Dd);

  count = inst.operands[1].imm << 1;
  if (ldstm_type == VFP_LDSTMIAX || ldstm_type == VFP_LDSTMDBX)
    count += 1;

  inst.instruction |= count;
}
