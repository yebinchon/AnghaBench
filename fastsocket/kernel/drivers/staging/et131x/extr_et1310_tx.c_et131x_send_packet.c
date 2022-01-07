
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct sk_buff {scalar_t__ len; int data_len; int * data; } ;
struct TYPE_4__ {scalar_t__ nBusySend; TYPE_2__* TCBReadyQueueTail; TYPE_2__* TCBReadyQueueHead; } ;
struct et131x_adapter {TYPE_1__ TxRing; int TCBReadyQLock; } ;
struct TYPE_5__ {scalar_t__ PacketLength; struct TYPE_5__* Next; int Flags; struct sk_buff* Packet; } ;
typedef TYPE_2__* PMP_TCB ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ NUM_TCB ;
 int WARN_ON (int) ;
 int fMP_DEST_BROAD ;
 int fMP_DEST_MULTI ;
 int nic_send_packet (struct et131x_adapter*,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int et131x_send_packet(struct sk_buff *skb,
         struct et131x_adapter *etdev)
{
 int status = 0;
 PMP_TCB pMpTcb = ((void*)0);
 uint16_t *shbufva;
 unsigned long flags;


 if (skb->len < ETH_HLEN) {
  return -EIO;
 }


 spin_lock_irqsave(&etdev->TCBReadyQLock, flags);

 pMpTcb = etdev->TxRing.TCBReadyQueueHead;

 if (pMpTcb == ((void*)0)) {
  spin_unlock_irqrestore(&etdev->TCBReadyQLock, flags);
  return -ENOMEM;
 }

 etdev->TxRing.TCBReadyQueueHead = pMpTcb->Next;

 if (etdev->TxRing.TCBReadyQueueHead == ((void*)0))
  etdev->TxRing.TCBReadyQueueTail = ((void*)0);

 spin_unlock_irqrestore(&etdev->TCBReadyQLock, flags);

 pMpTcb->PacketLength = skb->len;
 pMpTcb->Packet = skb;

 if ((skb->data != ((void*)0)) && ((skb->len - skb->data_len) >= 6)) {
  shbufva = (uint16_t *) skb->data;

  if ((shbufva[0] == 0xffff) &&
      (shbufva[1] == 0xffff) && (shbufva[2] == 0xffff)) {
   pMpTcb->Flags |= fMP_DEST_BROAD;
  } else if ((shbufva[0] & 0x3) == 0x0001) {
   pMpTcb->Flags |= fMP_DEST_MULTI;
  }
 }

 pMpTcb->Next = ((void*)0);


 if (status == 0)
  status = nic_send_packet(etdev, pMpTcb);

 if (status != 0) {
  spin_lock_irqsave(&etdev->TCBReadyQLock, flags);

  if (etdev->TxRing.TCBReadyQueueTail) {
   etdev->TxRing.TCBReadyQueueTail->Next = pMpTcb;
  } else {

   etdev->TxRing.TCBReadyQueueHead = pMpTcb;
  }

  etdev->TxRing.TCBReadyQueueTail = pMpTcb;
  spin_unlock_irqrestore(&etdev->TCBReadyQLock, flags);
  return status;
 }
 WARN_ON(etdev->TxRing.nBusySend > NUM_TCB);
 return 0;
}
