
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_statsaf_update {int entry33; int entry32; int entry31; int entry30; int entry23; int entry22; int entry21; int entry20; int entry13; int entry12; int entry11; int entry10; int entry03; int entry02; int entry01; int entry00; int afHeader; int fvMetric; int fvMax; int a24; int a23; int a22; int a21; int a20; int a04; int a00; int windowWidth; int windowHeight; int windowMode; int windowHOffset; int windowVOffset; } ;
struct vfe_statsaf_cfg {int entry33; int entry32; int entry31; int entry30; int entry23; int entry22; int entry21; int entry20; int entry13; int entry12; int entry11; int entry10; int entry03; int entry02; int entry01; int entry00; int afHeader; int fvMetric; int fvMax; int a24; int a23; int a22; int a21; int a20; int a04; int a00; int windowWidth; int windowHeight; int windowMode; int windowHOffset; int windowVOffset; } ;
struct vfe_cmd_stats_af_start {int * gridForMultiWindows; int bufferHeader; int metricSelection; int metricMax; int * highPassCoef; int windowWidth; int windowHeight; int windowMode; int windowHOffset; int windowVOffset; int enable; } ;
typedef int cmd2 ;
typedef int cmd ;
struct TYPE_5__ {int afPingpongIrq; } ;
struct TYPE_4__ {int autoFocusEnable; } ;
struct TYPE_6__ {scalar_t__ vfebase; TYPE_2__ vfeImaskLocal; TYPE_1__ vfeStatsCmdLocal; } ;


 int TRUE ;
 scalar_t__ VFE_STATS_AF_CFG ;
 scalar_t__ VFE_STATS_AF_GRID_0 ;
 TYPE_3__* ctrl ;
 int memset (struct vfe_statsaf_update*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_stats_start_af(struct vfe_cmd_stats_af_start *in)
{
 struct vfe_statsaf_update cmd;
 struct vfe_statsaf_cfg cmd2;

 memset(&cmd, 0, sizeof(cmd));
 memset(&cmd2, 0, sizeof(cmd2));

ctrl->vfeStatsCmdLocal.autoFocusEnable = in->enable;
ctrl->vfeImaskLocal.afPingpongIrq = TRUE;

 cmd.windowVOffset = in->windowVOffset;
 cmd.windowHOffset = in->windowHOffset;
 cmd.windowMode = in->windowMode;
 cmd.windowHeight = in->windowHeight;
 cmd.windowWidth = in->windowWidth;

 vfe_prog_hw(ctrl->vfebase + VFE_STATS_AF_CFG,
  (uint32_t *)&cmd, sizeof(cmd));

 cmd2.a00 = in->highPassCoef[0];
 cmd2.a04 = in->highPassCoef[1];
 cmd2.a20 = in->highPassCoef[2];
 cmd2.a21 = in->highPassCoef[3];
 cmd2.a22 = in->highPassCoef[4];
 cmd2.a23 = in->highPassCoef[5];
 cmd2.a24 = in->highPassCoef[6];
 cmd2.fvMax = in->metricMax;
 cmd2.fvMetric = in->metricSelection;
 cmd2.afHeader = in->bufferHeader;
 cmd2.entry00 = in->gridForMultiWindows[0];
 cmd2.entry01 = in->gridForMultiWindows[1];
 cmd2.entry02 = in->gridForMultiWindows[2];
 cmd2.entry03 = in->gridForMultiWindows[3];
 cmd2.entry10 = in->gridForMultiWindows[4];
 cmd2.entry11 = in->gridForMultiWindows[5];
 cmd2.entry12 = in->gridForMultiWindows[6];
 cmd2.entry13 = in->gridForMultiWindows[7];
 cmd2.entry20 = in->gridForMultiWindows[8];
 cmd2.entry21 = in->gridForMultiWindows[9];
 cmd2.entry22 = in->gridForMultiWindows[10];
 cmd2.entry23 = in->gridForMultiWindows[11];
 cmd2.entry30 = in->gridForMultiWindows[12];
 cmd2.entry31 = in->gridForMultiWindows[13];
 cmd2.entry32 = in->gridForMultiWindows[14];
 cmd2.entry33 = in->gridForMultiWindows[15];

 vfe_prog_hw(ctrl->vfebase + VFE_STATS_AF_GRID_0,
  (uint32_t *)&cmd2, sizeof(cmd2));
}
