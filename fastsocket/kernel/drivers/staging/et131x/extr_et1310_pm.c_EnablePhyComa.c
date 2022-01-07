
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int PowerDownDuplex; int PowerDownSpeed; } ;
struct et131x_adapter {TYPE_3__* regs; int SendHWLock; int Flags; int AiForceDpx; TYPE_1__ PoMgmt; int AiForceSpeed; } ;
struct TYPE_5__ {int pm_csr; } ;
struct TYPE_6__ {TYPE_2__ global; } ;


 int ET_PMCSR_INIT ;
 int ET_PM_PHY_SW_COMA ;
 int fMP_ADAPTER_LOWER_POWER ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int *) ;

void EnablePhyComa(struct et131x_adapter *etdev)
{
 unsigned long flags;
 u32 GlobalPmCSR;

 GlobalPmCSR = readl(&etdev->regs->global.pm_csr);




 etdev->PoMgmt.PowerDownSpeed = etdev->AiForceSpeed;
 etdev->PoMgmt.PowerDownDuplex = etdev->AiForceDpx;


 spin_lock_irqsave(&etdev->SendHWLock, flags);
 etdev->Flags |= fMP_ADAPTER_LOWER_POWER;
 spin_unlock_irqrestore(&etdev->SendHWLock, flags);




 GlobalPmCSR &= ~ET_PMCSR_INIT;
 writel(GlobalPmCSR, &etdev->regs->global.pm_csr);


 GlobalPmCSR |= ET_PM_PHY_SW_COMA;
 writel(GlobalPmCSR, &etdev->regs->global.pm_csr);
}
