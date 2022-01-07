
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfe_cmd_stats_setting {int * awbBuffer; int * afBuffer; } ;
struct TYPE_5__ {int nextFrameAddrBuf; int * addressBuffer; } ;
struct TYPE_4__ {int nextFrameAddrBuf; int * addressBuffer; } ;
struct TYPE_6__ {TYPE_2__ awbStatsControl; TYPE_1__ afStatsControl; } ;


 TYPE_3__* ctrl ;
 int vfe_stats_setting (struct vfe_cmd_stats_setting*) ;

void vfe_stats_config(struct vfe_cmd_stats_setting *in)
{
 ctrl->afStatsControl.addressBuffer[0] = in->afBuffer[0];
 ctrl->afStatsControl.addressBuffer[1] = in->afBuffer[1];
 ctrl->afStatsControl.nextFrameAddrBuf = in->afBuffer[2];

 ctrl->awbStatsControl.addressBuffer[0] = in->awbBuffer[0];
 ctrl->awbStatsControl.addressBuffer[1] = in->awbBuffer[1];
 ctrl->awbStatsControl.nextFrameAddrBuf = in->awbBuffer[2];

 vfe_stats_setting(in);
}
