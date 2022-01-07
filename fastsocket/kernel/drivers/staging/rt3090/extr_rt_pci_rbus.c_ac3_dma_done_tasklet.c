
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int Ac3DmaDone; } ;
struct TYPE_12__ {TYPE_1__ field; scalar_t__ word; } ;
struct TYPE_11__ {int ac3_dma_done_task; } ;
struct TYPE_10__ {int int_pending; int irq_lock; scalar_t__ OS_Cookie; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;
typedef TYPE_3__* POS_COOKIE ;
typedef TYPE_4__ INT_SOURCE_CSR_STRUC ;
typedef scalar_t__ BOOLEAN ;


 int INT_AC3_DLY ;
 scalar_t__ RTMPHandleTxRingDmaDoneInterrupt (TYPE_2__*,TYPE_4__) ;
 int RTMP_INT_LOCK (int *,unsigned long) ;
 int RTMP_INT_UNLOCK (int *,unsigned long) ;
 scalar_t__ RTMP_TEST_FLAG (TYPE_2__*,int) ;
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ;
 int fRTMP_ADAPTER_NIC_NOT_EXIST ;
 int rt2860_int_enable (TYPE_2__*,int) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void ac3_dma_done_tasklet(unsigned long data)
{
 unsigned long flags;
 PRTMP_ADAPTER pAd = (PRTMP_ADAPTER) data;
    INT_SOURCE_CSR_STRUC IntSource;
 POS_COOKIE pObj;
 BOOLEAN bReschedule = 0;



 if (RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS | fRTMP_ADAPTER_NIC_NOT_EXIST))
  return;

    pObj = (POS_COOKIE) pAd->OS_Cookie;


 IntSource.word = 0;
 IntSource.field.Ac3DmaDone = 1;
 pAd->int_pending &= ~INT_AC3_DLY;

 bReschedule = RTMPHandleTxRingDmaDoneInterrupt(pAd, IntSource);

 RTMP_INT_LOCK(&pAd->irq_lock, flags);



 if ((pAd->int_pending & INT_AC3_DLY) || bReschedule)
 {
  tasklet_hi_schedule(&pObj->ac3_dma_done_task);
  RTMP_INT_UNLOCK(&pAd->irq_lock, flags);
  return;
 }


 rt2860_int_enable(pAd, INT_AC3_DLY);
 RTMP_INT_UNLOCK(&pAd->irq_lock, flags);
}
