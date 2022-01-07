
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean ;
struct TYPE_3__ {int pingPongStatus; int droppedStatsFrameCount; int bufToRender; int nextFrameAddrBuf; int ackPending; } ;
struct TYPE_4__ {TYPE_1__ awbStatsControl; } ;


 TYPE_2__* ctrl ;
 int vfe_get_awb_pingpong_status () ;
 int vfe_read_awb_buf_addr (int) ;
 int vfe_send_awb_stats_msg (int ) ;
 int vfe_update_awb_buf_addr (int,int ) ;

__attribute__((used)) static void vfe_process_stats_awb_irq(void)
{
 boolean bufferAvailable;

 if (!(ctrl->awbStatsControl.ackPending)) {

  ctrl->awbStatsControl.pingPongStatus =
   vfe_get_awb_pingpong_status();

  bufferAvailable = (ctrl->awbStatsControl.pingPongStatus) ^ 1;

  ctrl->awbStatsControl.bufToRender =
   vfe_read_awb_buf_addr(bufferAvailable);

  vfe_update_awb_buf_addr(bufferAvailable,
   ctrl->awbStatsControl.nextFrameAddrBuf);

  vfe_send_awb_stats_msg(ctrl->awbStatsControl.bufToRender);

 } else
  ctrl->awbStatsControl.droppedStatsFrameCount++;
}
