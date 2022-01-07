
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* awbPingpongIrq; } ;
struct TYPE_4__ {void* axwEnable; } ;
struct TYPE_6__ {TYPE_2__ vfeImaskLocal; TYPE_1__ vfeStatsCmdLocal; } ;


 void* FALSE ;
 TYPE_3__* ctrl ;

void vfe_stats_wb_exp_stop(void)
{
 ctrl->vfeStatsCmdLocal.axwEnable = FALSE;
 ctrl->vfeImaskLocal.awbPingpongIrq = FALSE;
}
