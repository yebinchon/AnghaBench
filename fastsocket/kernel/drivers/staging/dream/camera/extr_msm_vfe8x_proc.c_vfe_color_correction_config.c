
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_color_correction_cfg {int coefQFactor; int k2; int k1; int k0; int c8; int c7; int c6; int c5; int c4; int c3; int c2; int c1; int c0; } ;
struct vfe_cmd_color_correction_config {int coefQFactor; int K2; int K1; int K0; int C8; int C7; int C6; int C5; int C4; int C3; int C2; int C1; int C0; int enable; } ;
typedef int cmd ;
struct TYPE_3__ {int colorCorrectionEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_COLOR_CORRECT_COEFF_0 ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_color_correction_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_color_correction_config(
 struct vfe_cmd_color_correction_config *in)
{
 struct vfe_color_correction_cfg cmd;

 memset(&cmd, 0, sizeof(cmd));
 ctrl->vfeModuleEnableLocal.colorCorrectionEnable = in->enable;

 cmd.c0 = in->C0;
 cmd.c1 = in->C1;
 cmd.c2 = in->C2;
 cmd.c3 = in->C3;
 cmd.c4 = in->C4;
 cmd.c5 = in->C5;
 cmd.c6 = in->C6;
 cmd.c7 = in->C7;
 cmd.c8 = in->C8;

 cmd.k0 = in->K0;
 cmd.k1 = in->K1;
 cmd.k2 = in->K2;

 cmd.coefQFactor = in->coefQFactor;

 vfe_prog_hw(ctrl->vfebase + VFE_COLOR_CORRECT_COEFF_0,
  (uint32_t *)&cmd, sizeof(cmd));
}
