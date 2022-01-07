
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int BFD_RELOC_ARM_CP_OFF_IMM_S2 ;
 int BFD_RELOC_ARM_T32_CP_OFF_IMM_S2 ;
 int FALSE ;
 int TRUE ;
 int encode_arm_cp_address (int,int ,int ,int) ;
 TYPE_2__ inst ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
do_iwmmxt_wldstbh (void)
{
  int reloc;
  inst.instruction |= inst.operands[0].reg << 12;
  if (thumb_mode)
    reloc = BFD_RELOC_ARM_T32_CP_OFF_IMM_S2;
  else
    reloc = BFD_RELOC_ARM_CP_OFF_IMM_S2;
  encode_arm_cp_address (1, TRUE, FALSE, reloc);
}
