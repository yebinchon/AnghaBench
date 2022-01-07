
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct net_device_stats {int tx_bytes; } ;
struct TYPE_11__ {scalar_t__ nBusySend; TYPE_5__* TCBReadyQueueTail; TYPE_5__* TCBReadyQueueHead; TYPE_4__* pTxDescRingVa; } ;
struct TYPE_10__ {int opackets; int unixmt; int multixmt; int brdcstxmt; } ;
struct et131x_adapter {TYPE_3__ TxRing; int TCBReadyQLock; TYPE_2__ Stats; int pdev; struct net_device_stats net_stats; } ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_13__ {int Flags; struct TYPE_13__* Next; TYPE_8__* Packet; int WrIndexStart; int WrIndex; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_12__ {TYPE_1__ word2; int DataBufferPtrLow; } ;
typedef TYPE_4__ TX_DESC_ENTRY_t ;
typedef TYPE_5__* PMP_TCB ;
typedef int MP_TCB ;


 int ET_DMA10_MASK ;
 int ET_DMA10_WRAP ;
 scalar_t__ INDEX10 (int ) ;
 scalar_t__ NUM_DESC_PER_RING_TX ;
 int PCI_DMA_TODEVICE ;
 int WARN_ON (int) ;
 int add_10bit (int *,int) ;
 int atomic_inc (int *) ;
 int dev_kfree_skb_any (TYPE_8__*) ;
 int fMP_DEST_BROAD ;
 int fMP_DEST_MULTI ;
 int memset (TYPE_5__*,int ,int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

inline void et131x_free_send_packet(struct et131x_adapter *etdev,
       PMP_TCB pMpTcb)
{
 unsigned long flags;
 TX_DESC_ENTRY_t *desc = ((void*)0);
 struct net_device_stats *stats = &etdev->net_stats;

 if (pMpTcb->Flags & fMP_DEST_BROAD)
  atomic_inc(&etdev->Stats.brdcstxmt);
 else if (pMpTcb->Flags & fMP_DEST_MULTI)
  atomic_inc(&etdev->Stats.multixmt);
 else
  atomic_inc(&etdev->Stats.unixmt);

 if (pMpTcb->Packet) {
  stats->tx_bytes += pMpTcb->Packet->len;





  do {
   desc =
       (TX_DESC_ENTRY_t *) (etdev->TxRing.pTxDescRingVa +
        INDEX10(pMpTcb->WrIndexStart));

   pci_unmap_single(etdev->pdev,
      desc->DataBufferPtrLow,
      desc->word2.value, PCI_DMA_TODEVICE);

   add_10bit(&pMpTcb->WrIndexStart, 1);
   if (INDEX10(pMpTcb->WrIndexStart) >=
       NUM_DESC_PER_RING_TX) {
        pMpTcb->WrIndexStart &= ~ET_DMA10_MASK;
        pMpTcb->WrIndexStart ^= ET_DMA10_WRAP;
   }
  } while (desc != (etdev->TxRing.pTxDescRingVa +
    INDEX10(pMpTcb->WrIndex)));

  dev_kfree_skb_any(pMpTcb->Packet);
 }

 memset(pMpTcb, 0, sizeof(MP_TCB));


 spin_lock_irqsave(&etdev->TCBReadyQLock, flags);

 etdev->Stats.opackets++;

 if (etdev->TxRing.TCBReadyQueueTail) {
  etdev->TxRing.TCBReadyQueueTail->Next = pMpTcb;
 } else {

  etdev->TxRing.TCBReadyQueueHead = pMpTcb;
 }

 etdev->TxRing.TCBReadyQueueTail = pMpTcb;

 spin_unlock_irqrestore(&etdev->TCBReadyQLock, flags);
 WARN_ON(etdev->TxRing.nBusySend < 0);
}
