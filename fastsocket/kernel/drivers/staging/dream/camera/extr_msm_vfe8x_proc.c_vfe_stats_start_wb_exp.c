
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_statsaxw_hdr_cfg {int axwHeader; int awbYMax; int awbYMin; int aeSubregionCfg; int aeRegionCfg; int c4; int c3; int c2; int c1; int m4; int m3; int m2; int m1; } ;
struct vfe_statsawbae_update {int axwHeader; int awbYMax; int awbYMin; int aeSubregionCfg; int aeRegionCfg; int c4; int c3; int c2; int c1; int m4; int m3; int m2; int m1; } ;
struct vfe_statsawb_update {int axwHeader; int awbYMax; int awbYMin; int aeSubregionCfg; int aeRegionCfg; int c4; int c3; int c2; int c1; int m4; int m3; int m2; int m1; } ;
struct vfe_cmd_stats_wb_exp_start {int axwHeader; int awbYMax; int awbYMin; int wbExpSubRegion; int wbExpRegions; int * awbCCFG; int * awbMCFG; int enable; } ;
typedef int cmd3 ;
typedef int cmd2 ;
typedef int cmd ;
struct TYPE_5__ {int awbPingpongIrq; } ;
struct TYPE_4__ {int axwEnable; } ;
struct TYPE_6__ {scalar_t__ vfebase; TYPE_2__ vfeImaskLocal; TYPE_1__ vfeStatsCmdLocal; } ;


 int TRUE ;
 scalar_t__ VFE_STATS_AWBAE_CFG ;
 scalar_t__ VFE_STATS_AWB_MCFG ;
 scalar_t__ VFE_STATS_AXW_HEADER ;
 TYPE_3__* ctrl ;
 int memset (struct vfe_statsaxw_hdr_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_stats_start_wb_exp(struct vfe_cmd_stats_wb_exp_start *in)
{
 struct vfe_statsawb_update cmd;
 struct vfe_statsawbae_update cmd2;
 struct vfe_statsaxw_hdr_cfg cmd3;

 ctrl->vfeStatsCmdLocal.axwEnable = in->enable;
 ctrl->vfeImaskLocal.awbPingpongIrq = TRUE;

 memset(&cmd, 0, sizeof(cmd));
 memset(&cmd2, 0, sizeof(cmd2));
 memset(&cmd3, 0, sizeof(cmd3));

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

 cmd3.axwHeader = in->axwHeader;
 vfe_prog_hw(ctrl->vfebase + VFE_STATS_AXW_HEADER,
  (uint32_t *)&cmd3, sizeof(cmd3));
}
