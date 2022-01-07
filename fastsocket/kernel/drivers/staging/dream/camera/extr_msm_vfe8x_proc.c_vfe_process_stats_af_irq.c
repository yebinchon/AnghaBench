
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean ;
struct TYPE_3__ {int pingPongStatus; int droppedStatsFrameCount; int bufToRender; int nextFrameAddrBuf; int ackPending; } ;
struct TYPE_4__ {TYPE_1__ afStatsControl; } ;


 TYPE_2__* ctrl ;
 int vfe_get_af_pingpong_status () ;
 int vfe_read_af_buf_addr (int) ;
 int vfe_send_af_stats_msg (int ) ;
 int vfe_update_af_buf_addr (int,int ) ;

__attribute__((used)) static void vfe_process_stats_af_irq(void)
{
 boolean bufferAvailable;

 if (!(ctrl->afStatsControl.ackPending)) {


  ctrl->afStatsControl.pingPongStatus =
   vfe_get_af_pingpong_status();

  bufferAvailable =
   (ctrl->afStatsControl.pingPongStatus) ^ 1;

  ctrl->afStatsControl.bufToRender =
   vfe_read_af_buf_addr(bufferAvailable);


  vfe_update_af_buf_addr(bufferAvailable,
   ctrl->afStatsControl.nextFrameAddrBuf);

  vfe_send_af_stats_msg(ctrl->afStatsControl.bufToRender);
 } else
  ctrl->afStatsControl.droppedStatsFrameCount++;
}
