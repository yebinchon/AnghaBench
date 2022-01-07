
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int uint32_t ;
struct skb_frag_struct {int size; int page_offset; int page; } ;
struct sk_buff {int len; int data_len; scalar_t__ data; } ;
struct TYPE_19__ {scalar_t__ TxPacketsSinceLastinterrupt; int txDmaReadyToSend; scalar_t__ pTxDescRingVa; int nBusySend; TYPE_10__* CurrSendTail; TYPE_10__* CurrSendHead; } ;
struct et131x_adapter {scalar_t__ linkspeed; int SendHWLock; TYPE_6__* regs; TYPE_3__ TxRing; int TCBSendQLock; int pdev; } ;
struct TYPE_17__ {int f; } ;
struct TYPE_18__ {int value; TYPE_1__ bits; } ;
struct TYPE_23__ {int length_in_bytes; } ;
struct TYPE_24__ {TYPE_7__ bits; } ;
struct TYPE_25__ {TYPE_2__ word3; void* DataBufferPtrLow; TYPE_8__ word2; scalar_t__ DataBufferPtrHigh; } ;
struct TYPE_21__ {int watchdog_timer; } ;
struct TYPE_20__ {int service_request; } ;
struct TYPE_22__ {TYPE_5__ global; TYPE_4__ txdma; } ;
struct TYPE_16__ {int nr_frags; struct skb_frag_struct* frags; } ;
struct TYPE_15__ {int WrIndexStart; int WrIndex; struct TYPE_15__* Next; scalar_t__ PacketStaleCount; struct sk_buff* Packet; } ;
typedef TYPE_9__ TX_DESC_ENTRY_t ;
typedef TYPE_10__* PMP_TCB ;


 int EIO ;
 int ET_DMA10_MASK ;
 int ET_DMA10_WRAP ;
 scalar_t__ INDEX10 (int) ;
 int NANO_IN_A_MICRO ;
 int NUM_DESC_PER_RING_TX ;
 scalar_t__ PARM_TX_NUM_BUFS_DEF ;
 int PARM_TX_TIME_INT_DEF ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ TRUEPHY_SPEED_1000MBPS ;
 int WARN_ON (int ) ;
 int add_10bit (int*,int) ;
 int memcpy (scalar_t__,TYPE_9__*,int) ;
 int memset (TYPE_9__*,int ,int) ;
 void* pci_map_page (int ,int ,int ,int,int ) ;
 void* pci_map_single (int ,scalar_t__,int,int ) ;
 TYPE_11__* skb_shinfo (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int *) ;

__attribute__((used)) static int nic_send_packet(struct et131x_adapter *etdev, PMP_TCB pMpTcb)
{
 uint32_t loopIndex;
 TX_DESC_ENTRY_t CurDesc[24];
 uint32_t FragmentNumber = 0;
 uint32_t thiscopy, remainder;
 struct sk_buff *pPacket = pMpTcb->Packet;
 uint32_t FragListCount = skb_shinfo(pPacket)->nr_frags + 1;
 struct skb_frag_struct *pFragList = &skb_shinfo(pPacket)->frags[0];
 unsigned long flags;
 if (FragListCount > 23) {
  return -EIO;
 }

 memset(CurDesc, 0, sizeof(TX_DESC_ENTRY_t) * (FragListCount + 1));

 for (loopIndex = 0; loopIndex < FragListCount; loopIndex++) {



  if (loopIndex == 0) {
   if ((pPacket->len - pPacket->data_len) <= 1514) {
    CurDesc[FragmentNumber].DataBufferPtrHigh = 0;
    CurDesc[FragmentNumber].word2.bits.
        length_in_bytes =
        pPacket->len - pPacket->data_len;
    CurDesc[FragmentNumber++].DataBufferPtrLow =
        pci_map_single(etdev->pdev,
         pPacket->data,
         pPacket->len -
         pPacket->data_len,
         PCI_DMA_TODEVICE);
   } else {
    CurDesc[FragmentNumber].DataBufferPtrHigh = 0;
    CurDesc[FragmentNumber].word2.bits.
        length_in_bytes =
        ((pPacket->len - pPacket->data_len) / 2);
    CurDesc[FragmentNumber++].DataBufferPtrLow =
        pci_map_single(etdev->pdev,
         pPacket->data,
         ((pPacket->len -
           pPacket->data_len) / 2),
         PCI_DMA_TODEVICE);
    CurDesc[FragmentNumber].DataBufferPtrHigh = 0;

    CurDesc[FragmentNumber].word2.bits.
        length_in_bytes =
        ((pPacket->len - pPacket->data_len) / 2);
    CurDesc[FragmentNumber++].DataBufferPtrLow =
        pci_map_single(etdev->pdev,
         pPacket->data +
         ((pPacket->len -
           pPacket->data_len) / 2),
         ((pPacket->len -
           pPacket->data_len) / 2),
         PCI_DMA_TODEVICE);
   }
  } else {
   CurDesc[FragmentNumber].DataBufferPtrHigh = 0;
   CurDesc[FragmentNumber].word2.bits.length_in_bytes =
       pFragList[loopIndex - 1].size;







   CurDesc[FragmentNumber++].DataBufferPtrLow =
       pci_map_page(etdev->pdev,
      pFragList[loopIndex - 1].page,
      pFragList[loopIndex - 1].page_offset,
      pFragList[loopIndex - 1].size,
      PCI_DMA_TODEVICE);
  }
 }

 if (FragmentNumber == 0)
  return -EIO;

 if (etdev->linkspeed == TRUEPHY_SPEED_1000MBPS) {
  if (++etdev->TxRing.TxPacketsSinceLastinterrupt ==
      PARM_TX_NUM_BUFS_DEF) {
   CurDesc[FragmentNumber - 1].word3.value = 0x5;
   etdev->TxRing.TxPacketsSinceLastinterrupt = 0;
  } else {
   CurDesc[FragmentNumber - 1].word3.value = 0x1;
  }
 } else {
  CurDesc[FragmentNumber - 1].word3.value = 0x5;
 }

 CurDesc[0].word3.bits.f = 1;

 pMpTcb->WrIndexStart = etdev->TxRing.txDmaReadyToSend;
 pMpTcb->PacketStaleCount = 0;

 spin_lock_irqsave(&etdev->SendHWLock, flags);

 thiscopy = NUM_DESC_PER_RING_TX -
    INDEX10(etdev->TxRing.txDmaReadyToSend);

 if (thiscopy >= FragmentNumber) {
  remainder = 0;
  thiscopy = FragmentNumber;
 } else {
  remainder = FragmentNumber - thiscopy;
 }

 memcpy(etdev->TxRing.pTxDescRingVa +
        INDEX10(etdev->TxRing.txDmaReadyToSend), CurDesc,
        sizeof(TX_DESC_ENTRY_t) * thiscopy);

 add_10bit(&etdev->TxRing.txDmaReadyToSend, thiscopy);

 if (INDEX10(etdev->TxRing.txDmaReadyToSend)== 0 ||
     INDEX10(etdev->TxRing.txDmaReadyToSend) == NUM_DESC_PER_RING_TX) {
       etdev->TxRing.txDmaReadyToSend &= ~ET_DMA10_MASK;
       etdev->TxRing.txDmaReadyToSend ^= ET_DMA10_WRAP;
 }

 if (remainder) {
  memcpy(etdev->TxRing.pTxDescRingVa,
         CurDesc + thiscopy,
         sizeof(TX_DESC_ENTRY_t) * remainder);

  add_10bit(&etdev->TxRing.txDmaReadyToSend, remainder);
 }

 if (INDEX10(etdev->TxRing.txDmaReadyToSend) == 0) {
  if (etdev->TxRing.txDmaReadyToSend)
   pMpTcb->WrIndex = NUM_DESC_PER_RING_TX - 1;
  else
   pMpTcb->WrIndex= ET_DMA10_WRAP | (NUM_DESC_PER_RING_TX - 1);
 } else
  pMpTcb->WrIndex = etdev->TxRing.txDmaReadyToSend - 1;

 spin_lock(&etdev->TCBSendQLock);

 if (etdev->TxRing.CurrSendTail)
  etdev->TxRing.CurrSendTail->Next = pMpTcb;
 else
  etdev->TxRing.CurrSendHead = pMpTcb;

 etdev->TxRing.CurrSendTail = pMpTcb;

 WARN_ON(pMpTcb->Next != ((void*)0));

 etdev->TxRing.nBusySend++;

 spin_unlock(&etdev->TCBSendQLock);


 writel(etdev->TxRing.txDmaReadyToSend,
        &etdev->regs->txdma.service_request);




 if (etdev->linkspeed == TRUEPHY_SPEED_1000MBPS) {
  writel(PARM_TX_TIME_INT_DEF * NANO_IN_A_MICRO,
         &etdev->regs->global.watchdog_timer);
 }
 spin_unlock_irqrestore(&etdev->SendHWLock, flags);

 return 0;
}
