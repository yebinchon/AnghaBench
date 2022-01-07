
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmd_frame_skip_update {int output2Pattern; int output1Pattern; } ;
struct VFE_FRAME_SKIP_UpdateCmdType {int cbcrPattern; int yPattern; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_FRAMEDROP_ENC_Y_PATTERN ;
 scalar_t__ VFE_FRAMEDROP_VIEW_Y_PATTERN ;
 TYPE_1__* ctrl ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_frame_skip_update(struct vfe_cmd_frame_skip_update *in)
{
 struct VFE_FRAME_SKIP_UpdateCmdType cmd;

 cmd.yPattern = in->output1Pattern;
 cmd.cbcrPattern = in->output1Pattern;
 vfe_prog_hw(ctrl->vfebase + VFE_FRAMEDROP_VIEW_Y_PATTERN,
  (uint32_t *)&cmd, sizeof(cmd));

 cmd.yPattern = in->output2Pattern;
 cmd.cbcrPattern = in->output2Pattern;
 vfe_prog_hw(ctrl->vfebase + VFE_FRAMEDROP_ENC_Y_PATTERN,
  (uint32_t *)&cmd, sizeof(cmd));
}
