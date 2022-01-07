
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct et131x_adapter {int ErrorTimer; int Flags; } ;


 int del_timer_sync (int *) ;
 int et131x_disable_interrupts (struct et131x_adapter*) ;
 int et131x_rx_dma_disable (struct et131x_adapter*) ;
 int et131x_tx_dma_disable (struct et131x_adapter*) ;
 int fMP_ADAPTER_INTERRUPT_IN_USE ;
 int free_irq (int ,struct net_device*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

int et131x_close(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);


 netif_stop_queue(netdev);


 et131x_rx_dma_disable(adapter);
 et131x_tx_dma_disable(adapter);


 et131x_disable_interrupts(adapter);


 adapter->Flags &= ~fMP_ADAPTER_INTERRUPT_IN_USE;
 free_irq(netdev->irq, netdev);


 del_timer_sync(&adapter->ErrorTimer);
 return 0;
}
