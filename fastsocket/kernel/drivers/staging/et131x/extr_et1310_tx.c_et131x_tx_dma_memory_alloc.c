
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pTxDummyBlkPa; void* pTxDummyBlkVa; int pTxStatusPa; void* pTxStatusVa; scalar_t__ TxDescOffset; scalar_t__ pTxDescRingVa; int pTxDescRingAdjustedPa; int pTxDescRingPa; int * MpTcbMem; } ;
struct et131x_adapter {TYPE_2__* pdev; TYPE_1__ TxRing; } ;
struct TYPE_4__ {int dev; } ;
typedef int TX_STATUS_BLOCK_t ;
typedef TYPE_1__ TX_RING_t ;
typedef int TX_DESC_ENTRY_t ;
typedef scalar_t__ PTX_DESC_ENTRY_t ;
typedef int MP_TCB ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int NIC_MIN_PACKET_SIZE ;
 int NUM_DESC_PER_RING_TX ;
 int NUM_TCB ;
 int dev_err (int *,char*) ;
 int et131x_align_allocated_memory (struct et131x_adapter*,int *,scalar_t__*,int) ;
 scalar_t__ kcalloc (int ,int,int) ;
 void* pci_alloc_consistent (TYPE_2__*,int,int *) ;

int et131x_tx_dma_memory_alloc(struct et131x_adapter *adapter)
{
 int desc_size = 0;
 TX_RING_t *tx_ring = &adapter->TxRing;


 adapter->TxRing.MpTcbMem = (MP_TCB *)kcalloc(NUM_TCB, sizeof(MP_TCB),
            GFP_ATOMIC | GFP_DMA);
 if (!adapter->TxRing.MpTcbMem) {
  dev_err(&adapter->pdev->dev, "Cannot alloc memory for TCBs\n");
  return -ENOMEM;
 }




 desc_size = (sizeof(TX_DESC_ENTRY_t) * NUM_DESC_PER_RING_TX) + 4096 - 1;
 tx_ring->pTxDescRingVa =
     (PTX_DESC_ENTRY_t) pci_alloc_consistent(adapter->pdev, desc_size,
          &tx_ring->pTxDescRingPa);
 if (!adapter->TxRing.pTxDescRingVa) {
  dev_err(&adapter->pdev->dev, "Cannot alloc memory for Tx Ring\n");
  return -ENOMEM;
 }
 tx_ring->pTxDescRingAdjustedPa = tx_ring->pTxDescRingPa;


 et131x_align_allocated_memory(adapter,
          &tx_ring->pTxDescRingAdjustedPa,
          &tx_ring->TxDescOffset, 0x0FFF);

 tx_ring->pTxDescRingVa += tx_ring->TxDescOffset;


 tx_ring->pTxStatusVa = pci_alloc_consistent(adapter->pdev,
          sizeof(TX_STATUS_BLOCK_t),
          &tx_ring->pTxStatusPa);
 if (!adapter->TxRing.pTxStatusPa) {
  dev_err(&adapter->pdev->dev,
      "Cannot alloc memory for Tx status block\n");
  return -ENOMEM;
 }


 tx_ring->pTxDummyBlkVa = pci_alloc_consistent(adapter->pdev,
            NIC_MIN_PACKET_SIZE,
            &tx_ring->pTxDummyBlkPa);
 if (!adapter->TxRing.pTxDummyBlkPa) {
  dev_err(&adapter->pdev->dev,
   "Cannot alloc memory for Tx dummy buffer\n");
  return -ENOMEM;
 }

 return 0;
}
