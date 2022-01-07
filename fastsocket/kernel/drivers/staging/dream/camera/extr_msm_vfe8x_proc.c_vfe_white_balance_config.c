
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_wb_cfg {int ch2Gain; int ch1Gain; int ch0Gain; } ;
struct vfe_cmd_white_balance_config {int ch2Gain; int ch1Gain; int ch0Gain; int enable; } ;
typedef int cmd ;
struct TYPE_3__ {int whiteBalanceEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_WB_CFG ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_wb_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_white_balance_config(struct vfe_cmd_white_balance_config *in)
{
 struct vfe_wb_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.whiteBalanceEnable =
  in->enable;

 cmd.ch0Gain = in->ch0Gain;
 cmd.ch1Gain = in->ch1Gain;
 cmd.ch2Gain = in->ch2Gain;

 vfe_prog_hw(ctrl->vfebase + VFE_WB_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
