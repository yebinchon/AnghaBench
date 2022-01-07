
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_frame_skip_cfg {int output1CbCrPattern; int output1YPattern; int output1CbCrPeriod; int output1YPeriod; int output2CbCrPattern; int output2YPattern; int output2CbCrPeriod; int output2YPeriod; } ;
struct vfe_cmd_frame_skip_config {int output1Pattern; int output1Period; int output2Pattern; int output2Period; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; struct vfe_cmd_frame_skip_config vfeFrameSkip; } ;


 scalar_t__ VFE_FRAMEDROP_ENC_Y_CFG ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_frame_skip_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_frame_skip_config(struct vfe_cmd_frame_skip_config *in)
{
 struct vfe_frame_skip_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeFrameSkip = *in;

 cmd.output2YPeriod = in->output2Period;
 cmd.output2CbCrPeriod = in->output2Period;
 cmd.output2YPattern = in->output2Pattern;
 cmd.output2CbCrPattern = in->output2Pattern;
 cmd.output1YPeriod = in->output1Period;
 cmd.output1CbCrPeriod = in->output1Period;
 cmd.output1YPattern = in->output1Pattern;
 cmd.output1CbCrPattern = in->output1Pattern;

 vfe_prog_hw(ctrl->vfebase + VFE_FRAMEDROP_ENC_Y_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
