
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_output_clamp_cfg {int crChanMin; int cbChanMin; int yChanMin; int crChanMax; int cbChanMax; int yChanMax; } ;
struct vfe_cmd_output_clamp_config {int minCh2; int minCh1; int minCh0; int maxCh2; int maxCh1; int maxCh0; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_CLAMP_MAX_CFG ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_output_clamp_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_output_clamp_config(struct vfe_cmd_output_clamp_config *in)
{
 struct vfe_output_clamp_cfg cmd;
 memset(&cmd, 0, sizeof(cmd));

 cmd.yChanMax = in->maxCh0;
 cmd.cbChanMax = in->maxCh1;
 cmd.crChanMax = in->maxCh2;

 cmd.yChanMin = in->minCh0;
 cmd.cbChanMin = in->minCh1;
 cmd.crChanMin = in->minCh2;

 vfe_prog_hw(ctrl->vfebase + VFE_CLAMP_MAX_CFG, (uint32_t *)&cmd,
  sizeof(cmd));
}
