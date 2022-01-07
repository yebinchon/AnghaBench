
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int status; int * pQTail; int * pQHead; TYPE_2__* pQPollFreeList; scalar_t__ pTimerQPoll; } ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
struct TYPE_6__ {int TimerQLock; TYPE_5__ TimerQ; } ;
typedef TYPE_1__ RTMP_ADAPTER ;
typedef TYPE_2__ RT2870_TIMER_ENTRY ;


 int NdisAllocateSpinLock (int *) ;
 int NdisZeroMemory (TYPE_5__*,int) ;
 int RT2870_THREAD_INITED ;
 int RTMP_IRQ_LOCK (int *,unsigned long) ;
 int RTMP_IRQ_UNLOCK (int *,unsigned long) ;
 int TIMER_QUEUE_SIZE_MAX ;
 int os_alloc_mem (TYPE_1__*,scalar_t__*,int) ;

void RT2870_TimerQ_Init(RTMP_ADAPTER *pAd)
{
 int i;
 RT2870_TIMER_ENTRY *pQNode, *pEntry;
 unsigned long irqFlags;

 NdisAllocateSpinLock(&pAd->TimerQLock);

 RTMP_IRQ_LOCK(&pAd->TimerQLock, irqFlags);
 NdisZeroMemory(&pAd->TimerQ, sizeof(pAd->TimerQ));





 os_alloc_mem(pAd, &pAd->TimerQ.pTimerQPoll, sizeof(RT2870_TIMER_ENTRY) * TIMER_QUEUE_SIZE_MAX);
 if (pAd->TimerQ.pTimerQPoll)
 {
  pEntry = ((void*)0);
  pQNode = (RT2870_TIMER_ENTRY *)pAd->TimerQ.pTimerQPoll;
  for (i = 0 ;i <TIMER_QUEUE_SIZE_MAX; i++)
  {
   pQNode->pNext = pEntry;
   pEntry = pQNode;
   pQNode++;
  }
  pAd->TimerQ.pQPollFreeList = pEntry;
  pAd->TimerQ.pQHead = ((void*)0);
  pAd->TimerQ.pQTail = ((void*)0);
  pAd->TimerQ.status = RT2870_THREAD_INITED;
 }
 RTMP_IRQ_UNLOCK(&pAd->TimerQLock, irqFlags);
}
