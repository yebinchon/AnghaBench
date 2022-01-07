
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_statsframe {int histBusPriorityEn; int awbBusPriorityEn; int afBusPriorityEn; int histBusPriority; int awbBusPriority; int afBusPriority; int lastLine; int lastPixel; } ;
struct vfe_cmd_stats_setting {int * histBuffer; int * awbBuffer; int * afBuffer; int histBusPrioritySelection; int awbBusPrioritySelection; int afBusPrioritySelection; int histBusPriority; int awbBusPriority; int afBusPriority; int frameVDimension; int frameHDimension; } ;
struct vfe_busstats_wrprio {int histBusPriorityEn; int awbBusPriorityEn; int afBusPriorityEn; int histBusPriority; int awbBusPriority; int afBusPriority; int lastLine; int lastPixel; } ;
typedef int cmd2 ;
typedef int cmd1 ;
struct TYPE_5__ {int nextFrameAddrBuf; int * addressBuffer; } ;
struct TYPE_4__ {int nextFrameAddrBuf; int * addressBuffer; } ;
struct TYPE_6__ {scalar_t__ vfebase; TYPE_2__ awbStatsControl; TYPE_1__ afStatsControl; } ;


 scalar_t__ VFE_BUS_STATS_AF_WR_PING_ADDR ;
 scalar_t__ VFE_BUS_STATS_AF_WR_PONG_ADDR ;
 scalar_t__ VFE_BUS_STATS_AWB_WR_PING_ADDR ;
 scalar_t__ VFE_BUS_STATS_AWB_WR_PONG_ADDR ;
 scalar_t__ VFE_BUS_STATS_HIST_WR_PING_ADDR ;
 scalar_t__ VFE_BUS_STATS_HIST_WR_PONG_ADDR ;
 scalar_t__ VFE_BUS_STATS_WR_PRIORITY ;
 scalar_t__ VFE_STATS_FRAME_SIZE ;
 TYPE_3__* ctrl ;
 int memset (struct vfe_statsframe*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;
 int writel (int ,scalar_t__) ;

void vfe_stats_setting(struct vfe_cmd_stats_setting *in)
{
 struct vfe_statsframe cmd1;
 struct vfe_busstats_wrprio cmd2;

 memset(&cmd1, 0, sizeof(cmd1));
 memset(&cmd2, 0, sizeof(cmd2));

 ctrl->afStatsControl.addressBuffer[0] = in->afBuffer[0];
 ctrl->afStatsControl.addressBuffer[1] = in->afBuffer[1];
 ctrl->afStatsControl.nextFrameAddrBuf = in->afBuffer[2];

 ctrl->awbStatsControl.addressBuffer[0] = in->awbBuffer[0];
 ctrl->awbStatsControl.addressBuffer[1] = in->awbBuffer[1];
 ctrl->awbStatsControl.nextFrameAddrBuf = in->awbBuffer[2];

 cmd1.lastPixel = in->frameHDimension;
 cmd1.lastLine = in->frameVDimension;
 vfe_prog_hw(ctrl->vfebase + VFE_STATS_FRAME_SIZE,
  (uint32_t *)&cmd1, sizeof(cmd1));

 cmd2.afBusPriority = in->afBusPriority;
 cmd2.awbBusPriority = in->awbBusPriority;
 cmd2.histBusPriority = in->histBusPriority;
 cmd2.afBusPriorityEn = in->afBusPrioritySelection;
 cmd2.awbBusPriorityEn = in->awbBusPrioritySelection;
 cmd2.histBusPriorityEn = in->histBusPrioritySelection;

 vfe_prog_hw(ctrl->vfebase + VFE_BUS_STATS_WR_PRIORITY,
  (uint32_t *)&cmd2, sizeof(cmd2));


 writel(in->afBuffer[0], ctrl->vfebase + VFE_BUS_STATS_AF_WR_PING_ADDR);
 writel(in->afBuffer[1], ctrl->vfebase + VFE_BUS_STATS_AF_WR_PONG_ADDR);
 writel(in->awbBuffer[0],
  ctrl->vfebase + VFE_BUS_STATS_AWB_WR_PING_ADDR);
 writel(in->awbBuffer[1],
  ctrl->vfebase + VFE_BUS_STATS_AWB_WR_PONG_ADDR);
 writel(in->histBuffer[0],
  ctrl->vfebase + VFE_BUS_STATS_HIST_WR_PING_ADDR);
 writel(in->histBuffer[1],
  ctrl->vfebase + VFE_BUS_STATS_HIST_WR_PONG_ADDR);
}
