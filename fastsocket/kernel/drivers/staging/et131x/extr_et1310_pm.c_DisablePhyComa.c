
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int PowerDownDuplex; int PowerDownSpeed; } ;
struct et131x_adapter {int Flags; TYPE_1__ PoMgmt; int AiForceDpx; int AiForceSpeed; TYPE_3__* regs; } ;
struct TYPE_5__ {int pm_csr; } ;
struct TYPE_6__ {TYPE_2__ global; } ;


 int ET_PMCSR_INIT ;
 int ET_PM_PHY_SW_COMA ;
 int et131x_adapter_setup (struct et131x_adapter*) ;
 int et131x_init_send (struct et131x_adapter*) ;
 int et131x_reset_recv (struct et131x_adapter*) ;
 int et131x_rx_dma_enable (struct et131x_adapter*) ;
 int et131x_soft_reset (struct et131x_adapter*) ;
 int fMP_ADAPTER_LOWER_POWER ;
 int readl (int *) ;
 int writel (int ,int *) ;

void DisablePhyComa(struct et131x_adapter *etdev)
{
 u32 GlobalPmCSR;

 GlobalPmCSR = readl(&etdev->regs->global.pm_csr);


 GlobalPmCSR |= ET_PMCSR_INIT;
 GlobalPmCSR &= ~ET_PM_PHY_SW_COMA;
 writel(GlobalPmCSR, &etdev->regs->global.pm_csr);




 etdev->AiForceSpeed = etdev->PoMgmt.PowerDownSpeed;
 etdev->AiForceDpx = etdev->PoMgmt.PowerDownDuplex;


 et131x_init_send(etdev);


 et131x_reset_recv(etdev);





 et131x_soft_reset(etdev);


 et131x_adapter_setup(etdev);


 etdev->Flags &= ~fMP_ADAPTER_LOWER_POWER;


 et131x_rx_dma_enable(etdev);
}
