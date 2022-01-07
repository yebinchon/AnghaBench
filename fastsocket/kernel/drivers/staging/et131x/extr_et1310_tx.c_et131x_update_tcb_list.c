
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int nBusySend; TYPE_4__* CurrSendHead; int * CurrSendTail; } ;
struct et131x_adapter {int TCBSendQLock; int netdev; TYPE_3__ TxRing; TYPE_2__* regs; } ;
struct TYPE_9__ {int WrIndex; struct TYPE_9__* Next; } ;
struct TYPE_6__ {int NewServiceComplete; } ;
struct TYPE_7__ {TYPE_1__ txdma; } ;
typedef TYPE_4__* PMP_TCB ;


 int ET_DMA10_MASK ;
 int ET_DMA10_WRAP ;
 int INDEX10 (int) ;
 int NUM_TCB ;
 int et131x_free_send_packet (struct et131x_adapter*,TYPE_4__*) ;
 int netif_wake_queue (int ) ;
 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void et131x_update_tcb_list(struct et131x_adapter *etdev)
{
 unsigned long flags;
 u32 ServiceComplete;
 PMP_TCB pMpTcb;
 u32 index;

 ServiceComplete = readl(&etdev->regs->txdma.NewServiceComplete);
 index = INDEX10(ServiceComplete);




 spin_lock_irqsave(&etdev->TCBSendQLock, flags);

 pMpTcb = etdev->TxRing.CurrSendHead;

 while (pMpTcb &&
        ((ServiceComplete ^ pMpTcb->WrIndex) & ET_DMA10_WRAP) &&
        index < INDEX10(pMpTcb->WrIndex)) {
  etdev->TxRing.nBusySend--;
  etdev->TxRing.CurrSendHead = pMpTcb->Next;
  if (pMpTcb->Next == ((void*)0))
   etdev->TxRing.CurrSendTail = ((void*)0);

  spin_unlock_irqrestore(&etdev->TCBSendQLock, flags);
  et131x_free_send_packet(etdev, pMpTcb);
  spin_lock_irqsave(&etdev->TCBSendQLock, flags);


  pMpTcb = etdev->TxRing.CurrSendHead;
 }
 while (pMpTcb &&
        !((ServiceComplete ^ pMpTcb->WrIndex) & ET_DMA10_WRAP)
        && index > (pMpTcb->WrIndex & ET_DMA10_MASK)) {
  etdev->TxRing.nBusySend--;
  etdev->TxRing.CurrSendHead = pMpTcb->Next;
  if (pMpTcb->Next == ((void*)0))
   etdev->TxRing.CurrSendTail = ((void*)0);

  spin_unlock_irqrestore(&etdev->TCBSendQLock, flags);
  et131x_free_send_packet(etdev, pMpTcb);
  spin_lock_irqsave(&etdev->TCBSendQLock, flags);


  pMpTcb = etdev->TxRing.CurrSendHead;
 }


 if (etdev->TxRing.nBusySend <= (NUM_TCB / 3))
  netif_wake_queue(etdev->netdev);

 spin_unlock_irqrestore(&etdev->TCBSendQLock, flags);
}
