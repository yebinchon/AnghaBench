
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ State; int TimerValue; int TimerObj; scalar_t__ Repeat; scalar_t__ cookie; int (* handle ) (int *,int ,int *,TYPE_4__*) ;} ;
struct TYPE_10__ {struct TYPE_10__* pNext; TYPE_4__* pRaTimer; } ;
struct TYPE_8__ {scalar_t__ status; TYPE_3__* pQPollFreeList; TYPE_3__* pQTail; TYPE_3__* pQHead; } ;
struct TYPE_9__ {TYPE_1__ TimerQ; int PM_FlgSuspend; int TimerQLock; int RTUSBTimer_semaphore; int TimerFunc_kill; } ;
typedef TYPE_2__ RTMP_ADAPTER ;
typedef TYPE_3__ RT2870_TIMER_ENTRY ;
typedef TYPE_4__ RALINK_TIMER_STRUCT ;
typedef int PVOID ;


 scalar_t__ FALSE ;
 scalar_t__ RT2870_THREAD_STOPED ;
 int RTMP_IRQ_LOCK (int *,unsigned long) ;
 int RTMP_IRQ_UNLOCK (int *,unsigned long) ;
 int RTMP_OS_Add_Timer (int *,int ) ;
 int RTMP_SET_FLAG (TYPE_2__*,int ) ;
 int down_interruptible (int *) ;
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ;
 int stub1 (int *,int ,int *,TYPE_4__*) ;

__attribute__((used)) static void RT2870_TimerQ_Handle(RTMP_ADAPTER *pAd)
{
 int status;
 RALINK_TIMER_STRUCT *pTimer;
 RT2870_TIMER_ENTRY *pEntry;
 unsigned long irqFlag;

 while(!pAd->TimerFunc_kill)
 {

  pTimer = ((void*)0);

  status = down_interruptible(&(pAd->RTUSBTimer_semaphore));

  if (pAd->TimerQ.status == RT2870_THREAD_STOPED)
   break;


  while(pAd->TimerQ.pQHead)
  {
   RTMP_IRQ_LOCK(&pAd->TimerQLock, irqFlag);
   pEntry = pAd->TimerQ.pQHead;
   if (pEntry)
   {
    pTimer = pEntry->pRaTimer;


    pAd->TimerQ.pQHead = pEntry->pNext;
    if (pEntry == pAd->TimerQ.pQTail)
     pAd->TimerQ.pQTail = ((void*)0);


    pEntry->pNext = pAd->TimerQ.pQPollFreeList;
    pAd->TimerQ.pQPollFreeList = pEntry;
   }
   RTMP_IRQ_UNLOCK(&pAd->TimerQLock, irqFlag);

   if (pTimer)
   {
    if (pTimer->handle != ((void*)0))
    if (!pAd->PM_FlgSuspend)
     pTimer->handle(((void*)0), (PVOID) pTimer->cookie, ((void*)0), pTimer);
    if ((pTimer->Repeat) && (pTimer->State == FALSE))
     RTMP_OS_Add_Timer(&pTimer->TimerObj, pTimer->TimerValue);
   }
  }

  if (status != 0)
  {
   pAd->TimerQ.status = RT2870_THREAD_STOPED;
   RTMP_SET_FLAG(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS);
   break;
  }
 }
}
