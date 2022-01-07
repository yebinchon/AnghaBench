
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; int dev_addr; } ;
struct et131x_adapter {int RegistryJumboPacket; int Flags; int CurrentAddress; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int dev_warn (int *,char*) ;
 int et131x_adapter_memory_alloc (struct et131x_adapter*) ;
 int et131x_adapter_memory_free (struct et131x_adapter*) ;
 int et131x_adapter_setup (struct et131x_adapter*) ;
 int et131x_disable_interrupts (struct et131x_adapter*) ;
 int et131x_enable_interrupts (struct et131x_adapter*) ;
 int et131x_handle_recv_interrupt (struct et131x_adapter*) ;
 int et131x_handle_send_interrupt (struct et131x_adapter*) ;
 int et131x_init_send (struct et131x_adapter*) ;
 int et131x_rx_dma_disable (struct et131x_adapter*) ;
 int et131x_rx_dma_enable (struct et131x_adapter*) ;
 int et131x_setup_hardware_properties (struct et131x_adapter*) ;
 int et131x_soft_reset (struct et131x_adapter*) ;
 int et131x_tx_dma_disable (struct et131x_adapter*) ;
 int et131x_tx_dma_enable (struct et131x_adapter*) ;
 int fMP_ADAPTER_INTERRUPT_IN_USE ;
 int memcpy (int ,int ,int ) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

int et131x_change_mtu(struct net_device *netdev, int new_mtu)
{
 int result = 0;
 struct et131x_adapter *adapter = netdev_priv(netdev);


 if (new_mtu < 64 || new_mtu > 9216)
  return -EINVAL;


 netif_stop_queue(netdev);


 et131x_rx_dma_disable(adapter);
 et131x_tx_dma_disable(adapter);


 et131x_disable_interrupts(adapter);
 et131x_handle_send_interrupt(adapter);
 et131x_handle_recv_interrupt(adapter);


 netdev->mtu = new_mtu;


 et131x_adapter_memory_free(adapter);


 adapter->RegistryJumboPacket = new_mtu + 14;
 et131x_soft_reset(adapter);


 result = et131x_adapter_memory_alloc(adapter);
 if (result != 0) {
  dev_warn(&adapter->pdev->dev,
   "Change MTU failed; couldn't re-alloc DMA memory\n");
  return result;
 }

 et131x_init_send(adapter);

 et131x_setup_hardware_properties(adapter);
 memcpy(netdev->dev_addr, adapter->CurrentAddress, ETH_ALEN);


 et131x_adapter_setup(adapter);


 if (adapter->Flags & fMP_ADAPTER_INTERRUPT_IN_USE)
  et131x_enable_interrupts(adapter);


 et131x_rx_dma_enable(adapter);
 et131x_tx_dma_enable(adapter);


 netif_wake_queue(netdev);
 return result;
}
