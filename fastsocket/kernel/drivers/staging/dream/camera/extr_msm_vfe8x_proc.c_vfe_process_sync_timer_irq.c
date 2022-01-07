
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_interrupt_status {scalar_t__ syncTimer2Irq; scalar_t__ syncTimer1Irq; scalar_t__ syncTimer0Irq; } ;


 int VFE_MSG_ID_SYNC_TIMER0_DONE ;
 int VFE_MSG_ID_SYNC_TIMER1_DONE ;
 int VFE_MSG_ID_SYNC_TIMER2_DONE ;
 int vfe_send_msg_no_payload (int ) ;

__attribute__((used)) static void vfe_process_sync_timer_irq(
 struct vfe_interrupt_status *irqstatus)
{
 if (irqstatus->syncTimer0Irq)
  vfe_send_msg_no_payload(VFE_MSG_ID_SYNC_TIMER0_DONE);

 if (irqstatus->syncTimer1Irq)
  vfe_send_msg_no_payload(VFE_MSG_ID_SYNC_TIMER1_DONE);

 if (irqstatus->syncTimer2Irq)
  vfe_send_msg_no_payload(VFE_MSG_ID_SYNC_TIMER2_DONE);
}
