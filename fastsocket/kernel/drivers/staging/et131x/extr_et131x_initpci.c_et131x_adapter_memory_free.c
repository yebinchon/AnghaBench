
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int dummy; } ;


 int et131x_rx_dma_memory_free (struct et131x_adapter*) ;
 int et131x_tx_dma_memory_free (struct et131x_adapter*) ;

void et131x_adapter_memory_free(struct et131x_adapter *adapter)
{

 et131x_tx_dma_memory_free(adapter);
 et131x_rx_dma_memory_free(adapter);
}
