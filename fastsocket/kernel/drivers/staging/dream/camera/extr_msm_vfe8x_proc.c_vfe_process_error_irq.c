
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_interrupt_status {scalar_t__ violationIrq; scalar_t__ camifOverflowIrq; scalar_t__ camifErrorIrq; scalar_t__ busOverflowIrq; scalar_t__ axiErrorIrq; scalar_t__ awbOverflowIrq; scalar_t__ afOverflowIrq; } ;


 int VFE_MSG_ID_AF_OVERFLOW ;
 int VFE_MSG_ID_AWB_OVERFLOW ;
 int VFE_MSG_ID_AXI_ERROR ;
 int VFE_MSG_ID_CAMIF_OVERFLOW ;
 int vfe_send_bus_overflow_msg () ;
 int vfe_send_camif_error_msg () ;
 int vfe_send_msg_no_payload (int ) ;

__attribute__((used)) static void vfe_process_error_irq(
 struct vfe_interrupt_status *irqstatus)
{


 if (irqstatus->afOverflowIrq)
  vfe_send_msg_no_payload(VFE_MSG_ID_AF_OVERFLOW);

 if (irqstatus->awbOverflowIrq)
  vfe_send_msg_no_payload(VFE_MSG_ID_AWB_OVERFLOW);

 if (irqstatus->axiErrorIrq)
  vfe_send_msg_no_payload(VFE_MSG_ID_AXI_ERROR);

 if (irqstatus->busOverflowIrq)
  vfe_send_bus_overflow_msg();

 if (irqstatus->camifErrorIrq)
  vfe_send_camif_error_msg();

 if (irqstatus->camifOverflowIrq)
  vfe_send_msg_no_payload(VFE_MSG_ID_CAMIF_OVERFLOW);

 if (irqstatus->violationIrq)
  ;
}
