
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int SendWaitQueue; TYPE_2__* CurrSendTail; TYPE_2__* CurrSendHead; TYPE_2__* TCBReadyQueueTail; TYPE_2__* TCBReadyQueueHead; TYPE_2__* MpTcbMem; } ;
struct et131x_adapter {TYPE_1__ TxRing; } ;
struct TYPE_5__ {struct TYPE_5__* Next; } ;
typedef TYPE_1__ TX_RING_t ;
typedef TYPE_2__* PMP_TCB ;
typedef int MP_TCB ;


 int INIT_LIST_HEAD (int *) ;
 int NUM_TCB ;
 int memset (TYPE_2__*,int ,int) ;

void et131x_init_send(struct et131x_adapter *adapter)
{
 PMP_TCB pMpTcb;
 uint32_t TcbCount;
 TX_RING_t *tx_ring;


 tx_ring = &adapter->TxRing;
 pMpTcb = adapter->TxRing.MpTcbMem;

 tx_ring->TCBReadyQueueHead = pMpTcb;


 for (TcbCount = 0; TcbCount < NUM_TCB; TcbCount++) {
  memset(pMpTcb, 0, sizeof(MP_TCB));





  if (TcbCount < NUM_TCB - 1) {
   pMpTcb->Next = pMpTcb + 1;
  } else {
   tx_ring->TCBReadyQueueTail = pMpTcb;
   pMpTcb->Next = (PMP_TCB) ((void*)0);
  }

  pMpTcb++;
 }


 tx_ring->CurrSendHead = (PMP_TCB) ((void*)0);
 tx_ring->CurrSendTail = (PMP_TCB) ((void*)0);

 INIT_LIST_HEAD(&adapter->TxRing.SendWaitQueue);
}
