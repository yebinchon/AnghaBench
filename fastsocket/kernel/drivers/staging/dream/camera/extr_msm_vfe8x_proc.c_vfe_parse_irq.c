
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_irq_thread_msg {int vfeIrqStatus; } ;
struct isr_queue_cmd {int list; int vfePmData; int vfeCamifStatusLocal; int vfeBpcFrameInfo; int vfeAsfFrameInfo; int vfeInterruptStatus; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int vfeImaskPacked; scalar_t__ vfebase; int tasklet_lock; int tasklet_q; int ack_lock; scalar_t__ vfeStopAckPending; } ;


 int CDBG (char*) ;
 int GFP_ATOMIC ;
 int IRQ_HANDLED ;
 int VFE_IMASK_ERROR_ONLY ;
 int VFE_IMASK_WHILE_STOPPING ;
 scalar_t__ VFE_IRQ_CLEAR ;
 TYPE_1__* ctrl ;
 struct isr_queue_cmd* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 int vfe_get_asf_frame_info (struct vfe_irq_thread_msg*) ;
 int vfe_get_camif_status (struct vfe_irq_thread_msg*) ;
 int vfe_get_demosaic_frame_info (struct vfe_irq_thread_msg*) ;
 int vfe_get_performance_monitor_data (struct vfe_irq_thread_msg*) ;
 int vfe_parse_interrupt_status (int) ;
 int vfe_read_irq_status (struct vfe_irq_thread_msg*) ;
 int vfe_tasklet ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t vfe_parse_irq(int irq_num, void *data)
{
 unsigned long flags;
 uint32_t irqStatusLocal;
 struct vfe_irq_thread_msg irq;
 struct isr_queue_cmd *qcmd;

 CDBG("vfe_parse_irq\n");

 vfe_read_irq_status(&irq);

 if (irq.vfeIrqStatus == 0) {
  CDBG("vfe_parse_irq: irq.vfeIrqStatus is 0\n");
  return IRQ_HANDLED;
 }

 qcmd = kzalloc(sizeof(struct isr_queue_cmd),
  GFP_ATOMIC);
 if (!qcmd) {
  CDBG("vfe_parse_irq: qcmd malloc failed!\n");
  return IRQ_HANDLED;
 }

 spin_lock_irqsave(&ctrl->ack_lock, flags);

 if (ctrl->vfeStopAckPending)
  irqStatusLocal =
   (VFE_IMASK_WHILE_STOPPING & irq.vfeIrqStatus);
 else
  irqStatusLocal =
   ((ctrl->vfeImaskPacked | VFE_IMASK_ERROR_ONLY) &
    irq.vfeIrqStatus);

 spin_unlock_irqrestore(&ctrl->ack_lock, flags);


 qcmd->vfeInterruptStatus = vfe_parse_interrupt_status(irqStatusLocal);
 qcmd->vfeAsfFrameInfo = vfe_get_asf_frame_info(&irq);
 qcmd->vfeBpcFrameInfo = vfe_get_demosaic_frame_info(&irq);
 qcmd->vfeCamifStatusLocal = vfe_get_camif_status(&irq);
 qcmd->vfePmData = vfe_get_performance_monitor_data(&irq);

 spin_lock_irqsave(&ctrl->tasklet_lock, flags);
 list_add_tail(&qcmd->list, &ctrl->tasklet_q);
 spin_unlock_irqrestore(&ctrl->tasklet_lock, flags);
 tasklet_schedule(&vfe_tasklet);


 writel(irq.vfeIrqStatus, ctrl->vfebase + VFE_IRQ_CLEAR);

 return IRQ_HANDLED;
}
