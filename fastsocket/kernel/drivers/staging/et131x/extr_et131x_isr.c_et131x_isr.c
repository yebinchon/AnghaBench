
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_11__ {int InterruptStatus; } ;
struct TYPE_8__ {scalar_t__ UnfinishedReceives; } ;
struct TYPE_7__ {TYPE_6__* CurrSendHead; } ;
struct et131x_adapter {scalar_t__ FlowControl; int task; TYPE_5__ Stats; TYPE_4__* regs; TYPE_2__ RxRing; TYPE_1__ TxRing; } ;
typedef int irqreturn_t ;
struct TYPE_12__ {int PacketStaleCount; } ;
struct TYPE_9__ {int watchdog_timer; int int_status; } ;
struct TYPE_10__ {TYPE_3__ global; } ;
typedef TYPE_6__* PMP_TCB ;


 scalar_t__ Both ;
 int ET_INTR_RXDMA_XFR_DONE ;
 int ET_INTR_TXDMA_ISR ;
 int ET_INTR_WATCHDOG ;
 int INT_MASK_ENABLE ;
 int INT_MASK_ENABLE_NO_FLOW ;
 int IRQ_RETVAL (int) ;
 scalar_t__ TxOnly ;
 int et131x_disable_interrupts (struct et131x_adapter*) ;
 int et131x_enable_interrupts (struct et131x_adapter*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int readl (int *) ;
 int schedule_work (int *) ;
 int writel (int ,int *) ;

irqreturn_t et131x_isr(int irq, void *dev_id)
{
 bool handled = 1;
 struct net_device *netdev = (struct net_device *)dev_id;
 struct et131x_adapter *adapter = ((void*)0);
 u32 status;

 if (!netif_device_present(netdev)) {
  handled = 0;
  goto out;
 }

 adapter = netdev_priv(netdev);






 et131x_disable_interrupts(adapter);




 status = readl(&adapter->regs->global.int_status);

 if (adapter->FlowControl == TxOnly ||
     adapter->FlowControl == Both) {
  status &= ~INT_MASK_ENABLE;
 } else {
  status &= ~INT_MASK_ENABLE_NO_FLOW;
 }


 if (!status) {
  handled = 0;
  et131x_enable_interrupts(adapter);
  goto out;
 }



 if (status & ET_INTR_WATCHDOG) {
  PMP_TCB pMpTcb = adapter->TxRing.CurrSendHead;

  if (pMpTcb)
   if (++pMpTcb->PacketStaleCount > 1)
    status |= ET_INTR_TXDMA_ISR;

  if (adapter->RxRing.UnfinishedReceives)
   status |= ET_INTR_RXDMA_XFR_DONE;
  else if (pMpTcb == ((void*)0))
   writel(0, &adapter->regs->global.watchdog_timer);

  status &= ~ET_INTR_WATCHDOG;
 }

 if (status == 0) {





  et131x_enable_interrupts(adapter);
  goto out;
 }





 adapter->Stats.InterruptStatus = status;





 schedule_work(&adapter->task);
out:
 return IRQ_RETVAL(handled);
}
