
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* pNext; } ;
struct TYPE_6__ {int status; TYPE_3__* pQHead; int * pQTail; int pTimerQPoll; int * pQPollFreeList; } ;
struct TYPE_7__ {int TimerQLock; TYPE_1__ TimerQ; } ;
typedef TYPE_2__ RTMP_ADAPTER ;
typedef TYPE_3__ RT2870_TIMER_ENTRY ;


 int RT2870_THREAD_STOPED ;
 int RTMP_IRQ_LOCK (int *,unsigned long) ;
 int RTMP_IRQ_UNLOCK (int *,unsigned long) ;
 int os_free_mem (TYPE_2__*,int ) ;

void RT2870_TimerQ_Exit(RTMP_ADAPTER *pAd)
{
 RT2870_TIMER_ENTRY *pTimerQ;
 unsigned long irqFlags;

 RTMP_IRQ_LOCK(&pAd->TimerQLock, irqFlags);
 while (pAd->TimerQ.pQHead)
 {
  pTimerQ = pAd->TimerQ.pQHead;
  pAd->TimerQ.pQHead = pTimerQ->pNext;

 }
 pAd->TimerQ.pQPollFreeList = ((void*)0);
 os_free_mem(pAd, pAd->TimerQ.pTimerQPoll);
 pAd->TimerQ.pQTail = ((void*)0);
 pAd->TimerQ.pQHead = ((void*)0);
 pAd->TimerQ.status = RT2870_THREAD_STOPED;
 RTMP_IRQ_UNLOCK(&pAd->TimerQLock, irqFlags);

}
