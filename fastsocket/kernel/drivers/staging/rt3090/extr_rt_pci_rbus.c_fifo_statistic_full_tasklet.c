
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fifo_statistic_full_task; } ;
struct TYPE_6__ {int int_pending; int irq_lock; scalar_t__ OS_Cookie; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;
typedef TYPE_2__* POS_COOKIE ;


 int FifoStaFullInt ;
 int NICUpdateFifoStaCounters (TYPE_1__*) ;
 int RTMP_INT_LOCK (int *,unsigned long) ;
 int RTMP_INT_UNLOCK (int *,unsigned long) ;
 scalar_t__ RTMP_TEST_FLAG (TYPE_1__*,int) ;
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ;
 int fRTMP_ADAPTER_NIC_NOT_EXIST ;
 int rt2860_int_enable (TYPE_1__*,int) ;
 int tasklet_hi_schedule (int *) ;

void fifo_statistic_full_tasklet(unsigned long data)
{
 unsigned long flags;
 PRTMP_ADAPTER pAd = (PRTMP_ADAPTER) data;
 POS_COOKIE pObj;



 if (RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS | fRTMP_ADAPTER_NIC_NOT_EXIST))
  return;

    pObj = (POS_COOKIE) pAd->OS_Cookie;

 pAd->int_pending &= ~(FifoStaFullInt);
 NICUpdateFifoStaCounters(pAd);

 RTMP_INT_LOCK(&pAd->irq_lock, flags);



 if (pAd->int_pending & FifoStaFullInt)
 {
  tasklet_hi_schedule(&pObj->fifo_statistic_full_task);
  RTMP_INT_UNLOCK(&pAd->irq_lock, flags);
  return;
 }



 rt2860_int_enable(pAd, FifoStaFullInt);
 RTMP_INT_UNLOCK(&pAd->irq_lock, flags);

}
