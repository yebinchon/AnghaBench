
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfe_interrupt_status {scalar_t__ encIrq; scalar_t__ encYPingpongIrq; scalar_t__ encCbcrPingpongIrq; scalar_t__ anyOutput2PathIrqs; scalar_t__ viewIrq; scalar_t__ viewYPingpongIrq; scalar_t__ viewCbcrPingpongIrq; scalar_t__ anyOutput1PathIrqs; } ;
struct TYPE_4__ {scalar_t__ snapshotPendingCount; int fragCount; int yPath; int cbcrPath; scalar_t__ multiFrag; } ;
struct TYPE_5__ {int vstate; TYPE_1__ viewPath; TYPE_1__ encPath; scalar_t__ vfeOperationMode; } ;


 int VFE_MSG_ID_SNAPSHOT_DONE ;
 int VFE_STATE_IDLE ;
 int VFE_TEST_GEN_STOP ;
 TYPE_3__* ctrl ;
 int vfe_pm_stop () ;
 int vfe_process_frame_done_irq_multi_frag (TYPE_1__*) ;
 int vfe_process_frame_done_irq_no_frag (TYPE_1__*) ;
 int vfe_process_pingpong_irq (int *,int ) ;
 int vfe_prog_hw_testgen_cmd (int ) ;
 int vfe_send_msg_no_payload (int ) ;

__attribute__((used)) static void vfe_process_output_path_irq(
 struct vfe_interrupt_status *irqstatus)
{



 if (irqstatus->anyOutput1PathIrqs) {
  if (ctrl->viewPath.multiFrag) {

   if (irqstatus->viewCbcrPingpongIrq)
    vfe_process_pingpong_irq(
     &(ctrl->viewPath.cbcrPath),
     ctrl->viewPath.fragCount);

   if (irqstatus->viewYPingpongIrq)
    vfe_process_pingpong_irq(
     &(ctrl->viewPath.yPath),
     ctrl->viewPath.fragCount);

   if (irqstatus->viewIrq)
    vfe_process_frame_done_irq_multi_frag(
     &ctrl->viewPath);

  } else {


   if (irqstatus->viewIrq)
    vfe_process_frame_done_irq_no_frag(
     &ctrl->viewPath);
  }
 }


 if (irqstatus->anyOutput2PathIrqs) {
  if (ctrl->encPath.multiFrag) {
   if (irqstatus->encCbcrPingpongIrq)
    vfe_process_pingpong_irq(
     &(ctrl->encPath.cbcrPath),
     ctrl->encPath.fragCount);

   if (irqstatus->encYPingpongIrq)
    vfe_process_pingpong_irq(&(ctrl->encPath.yPath),
    ctrl->encPath.fragCount);

   if (irqstatus->encIrq)
    vfe_process_frame_done_irq_multi_frag(
     &ctrl->encPath);

  } else {
   if (irqstatus->encIrq)
    vfe_process_frame_done_irq_no_frag(
     &ctrl->encPath);
  }
 }

 if (ctrl->vfeOperationMode) {
  if ((ctrl->encPath.snapshotPendingCount == 0) &&
    (ctrl->viewPath.snapshotPendingCount == 0)) {



   ctrl->vstate = VFE_STATE_IDLE;


   vfe_send_msg_no_payload(VFE_MSG_ID_SNAPSHOT_DONE);
   vfe_prog_hw_testgen_cmd(VFE_TEST_GEN_STOP);
   vfe_pm_stop();
  }
 }
}
