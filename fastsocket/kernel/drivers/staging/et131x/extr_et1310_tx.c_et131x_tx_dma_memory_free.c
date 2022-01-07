
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MpTcbMem; int * pTxDummyBlkVa; int pTxDummyBlkPa; int * pTxStatusVa; int pTxStatusPa; int * pTxDescRingVa; int pTxDescRingPa; scalar_t__ TxDescOffset; } ;
struct et131x_adapter {TYPE_1__ TxRing; int pdev; } ;
typedef int TX_STATUS_BLOCK_t ;
typedef int TX_DESC_ENTRY_t ;


 int NIC_MIN_PACKET_SIZE ;
 int NUM_DESC_PER_RING_TX ;
 int kfree (int ) ;
 int pci_free_consistent (int ,int,int *,int ) ;

void et131x_tx_dma_memory_free(struct et131x_adapter *adapter)
{
 int desc_size = 0;

 if (adapter->TxRing.pTxDescRingVa) {

  adapter->TxRing.pTxDescRingVa -= adapter->TxRing.TxDescOffset;

  desc_size =
      (sizeof(TX_DESC_ENTRY_t) * NUM_DESC_PER_RING_TX) + 4096 - 1;

  pci_free_consistent(adapter->pdev,
        desc_size,
        adapter->TxRing.pTxDescRingVa,
        adapter->TxRing.pTxDescRingPa);

  adapter->TxRing.pTxDescRingVa = ((void*)0);
 }


 if (adapter->TxRing.pTxStatusVa) {
  pci_free_consistent(adapter->pdev,
        sizeof(TX_STATUS_BLOCK_t),
        adapter->TxRing.pTxStatusVa,
        adapter->TxRing.pTxStatusPa);

  adapter->TxRing.pTxStatusVa = ((void*)0);
 }


 if (adapter->TxRing.pTxDummyBlkVa) {
  pci_free_consistent(adapter->pdev,
        NIC_MIN_PACKET_SIZE,
        adapter->TxRing.pTxDummyBlkVa,
        adapter->TxRing.pTxDummyBlkPa);

  adapter->TxRing.pTxDummyBlkVa = ((void*)0);
 }


 kfree(adapter->TxRing.MpTcbMem);
}
