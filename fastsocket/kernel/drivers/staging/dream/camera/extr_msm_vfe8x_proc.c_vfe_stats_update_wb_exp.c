
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_statsawbae_update {int awbYMax; int awbYMin; int aeSubregionCfg; int aeRegionCfg; int c4; int c3; int c2; int c1; int m4; int m3; int m2; int m1; } ;
struct vfe_statsawb_update {int awbYMax; int awbYMin; int aeSubregionCfg; int aeRegionCfg; int c4; int c3; int c2; int c1; int m4; int m3; int m2; int m1; } ;
struct vfe_cmd_stats_wb_exp_update {int awbYMax; int awbYMin; int wbExpSubRegion; int wbExpRegions; int * awbCCFG; int * awbMCFG; } ;
typedef int cmd2 ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_STATS_AWBAE_CFG ;
 scalar_t__ VFE_STATS_AWB_MCFG ;
 TYPE_1__* ctrl ;
 int memset (struct vfe_statsawbae_update*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_stats_update_wb_exp(struct vfe_cmd_stats_wb_exp_update *in)
{
 struct vfe_statsawb_update cmd;
 struct vfe_statsawbae_update cmd2;

 memset(&cmd, 0, sizeof(cmd));
 memset(&cmd2, 0, sizeof(cmd2));

 cmd.m1 = in->awbMCFG[0];
 cmd.m2 = in->awbMCFG[1];
 cmd.m3 = in->awbMCFG[2];
 cmd.m4 = in->awbMCFG[3];
 cmd.c1 = in->awbCCFG[0];
 cmd.c2 = in->awbCCFG[1];
 cmd.c3 = in->awbCCFG[2];
 cmd.c4 = in->awbCCFG[3];
 vfe_prog_hw(ctrl->vfebase + VFE_STATS_AWB_MCFG,
  (uint32_t *)&cmd, sizeof(cmd));

 cmd2.aeRegionCfg = in->wbExpRegions;
 cmd2.aeSubregionCfg = in->wbExpSubRegion;
 cmd2.awbYMin = in->awbYMin;
 cmd2.awbYMax = in->awbYMax;
 vfe_prog_hw(ctrl->vfebase + VFE_STATS_AWBAE_CFG,
  (uint32_t *)&cmd2, sizeof(cmd2));
}
