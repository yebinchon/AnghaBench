
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* boolean ;
struct TYPE_2__ {scalar_t__ vfebase; void* vfeStatsPingPongReloadFlag; void* vfeStopAckPending; } ;


 int AXI_HALT ;
 int AXI_HALT_CLEAR ;
 int AXI_STATUS_BUSY_MASK ;
 void* FALSE ;
 void* TRUE ;
 int VFE_CLEAR_ALL_IRQS ;
 int VFE_DISABLE_ALL_IRQS ;
 int VFE_IMASK_WHILE_STOPPING ;
 scalar_t__ VFE_IRQ_CLEAR ;
 int VFE_RESET_UPON_STOP_CMD ;
 int VFE_TEST_GEN_STOP ;
 TYPE_1__* ctrl ;
 int vfe_camif_stop_immediately () ;
 int vfe_pm_stop () ;
 int vfe_prog_hw_testgen_cmd (int ) ;
 int vfe_program_axi_cmd (int ) ;
 int vfe_program_global_reset_cmd (int ) ;
 int vfe_program_irq_mask (int ) ;
 int vfe_read_axi_status () ;
 int writel (int ,scalar_t__) ;

void vfe_stop(void)
{
 boolean vfeAxiBusy;
 uint32_t vfeAxiStauts;


 ctrl->vfeStopAckPending = TRUE;

 ctrl->vfeStatsPingPongReloadFlag = FALSE;
 vfe_pm_stop();


 vfe_program_irq_mask(VFE_DISABLE_ALL_IRQS);




 vfe_camif_stop_immediately();
 vfe_program_axi_cmd(AXI_HALT);
 vfe_prog_hw_testgen_cmd(VFE_TEST_GEN_STOP);

 vfeAxiBusy = TRUE;

 while (vfeAxiBusy) {
  vfeAxiStauts = vfe_read_axi_status();
  if ((vfeAxiStauts & AXI_STATUS_BUSY_MASK) != 0)
   vfeAxiBusy = FALSE;
 }

 vfe_program_axi_cmd(AXI_HALT_CLEAR);


 writel(VFE_CLEAR_ALL_IRQS, ctrl->vfebase + VFE_IRQ_CLEAR);




 vfe_program_irq_mask(VFE_IMASK_WHILE_STOPPING);

 vfe_program_global_reset_cmd(VFE_RESET_UPON_STOP_CMD);
}
