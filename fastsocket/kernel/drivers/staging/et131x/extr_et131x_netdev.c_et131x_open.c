
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int irq; int name; } ;
struct et131x_adapter {int Flags; TYPE_1__* pdev; int ErrorTimer; } ;
struct TYPE_2__ {int dev; } ;


 int IRQF_SHARED ;
 int add_timer (int *) ;
 int dev_err (int *,char*,int ) ;
 int et131x_enable_interrupts (struct et131x_adapter*) ;
 int et131x_isr ;
 int et131x_rx_dma_enable (struct et131x_adapter*) ;
 int et131x_tx_dma_enable (struct et131x_adapter*) ;
 int fMP_ADAPTER_INTERRUPT_IN_USE ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

int et131x_open(struct net_device *netdev)
{
 int result = 0;
 struct et131x_adapter *adapter = netdev_priv(netdev);


 add_timer(&adapter->ErrorTimer);


 result = request_irq(netdev->irq, et131x_isr, IRQF_SHARED,
     netdev->name, netdev);
 if (result) {
  dev_err(&adapter->pdev->dev, "c ould not register IRQ %d\n",
   netdev->irq);
  return result;
 }


 et131x_rx_dma_enable(adapter);
 et131x_tx_dma_enable(adapter);


 et131x_enable_interrupts(adapter);

 adapter->Flags |= fMP_ADAPTER_INTERRUPT_IN_USE;


 netif_start_queue(netdev);
 return result;
}
