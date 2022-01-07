
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* purbb_t ;
struct TYPE_11__ {int bulkResetPipeid; int * BulkOutLock; scalar_t__* watchDogTxPendingCnt; void** BulkOutPending; } ;
struct TYPE_10__ {void* InUse; void* IRPPending; TYPE_3__* pAd; } ;
struct TYPE_9__ {scalar_t__ status; scalar_t__ context; } ;
typedef TYPE_2__* PTX_CONTEXT ;
typedef TYPE_3__* PRTMP_ADAPTER ;
typedef scalar_t__ NTSTATUS ;


 int BULKOUT_MGMT_RESET_FLAG ;
 int CMDTHREAD_RESET_BULK_OUT ;
 int DBGPRINT_RAW (int ,char*) ;
 void* FALSE ;
 int MAX_TX_PROCESS ;
 int MGMTPIPEIDX ;
 int NUM_OF_TX_RING ;
 int RTMPDeQueuePacket (TYPE_3__*,void*,int ,int ) ;
 int RTMP_IRQ_LOCK (int *,unsigned long) ;
 int RTMP_IRQ_UNLOCK (int *,unsigned long) ;
 int RTMP_SET_FLAG (TYPE_3__*,int ) ;
 int RTMP_TEST_FLAG (TYPE_3__*,int ) ;
 int RTUSBEnqueueInternalCmd (TYPE_3__*,int ,int *,int ) ;
 int RTUSBKickBulkOut (TYPE_3__*) ;
 int RT_DEBUG_ERROR ;
 scalar_t__ USB_ST_NOERROR ;
 int fRTMP_ADAPTER_BULKOUT_RESET ;
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ;
 int fRTMP_ADAPTER_NIC_NOT_EXIST ;
 int fRTMP_ADAPTER_RESET_IN_PROGRESS ;

__attribute__((used)) static void rt2870_null_frame_complete_tasklet(unsigned long data)
{
 PRTMP_ADAPTER pAd;
 PTX_CONTEXT pNullContext;
 purbb_t pUrb;
 NTSTATUS Status;
 unsigned long irqFlag;


 pUrb = (purbb_t)data;
 pNullContext = (PTX_CONTEXT)pUrb->context;
 pAd = pNullContext->pAd;
 Status = pUrb->status;


 RTMP_IRQ_LOCK(&pAd->BulkOutLock[0], irqFlag);
 pNullContext->IRPPending = FALSE;
 pNullContext->InUse = FALSE;
 pAd->BulkOutPending[0] = FALSE;
 pAd->watchDogTxPendingCnt[0] = 0;

 if (Status == USB_ST_NOERROR)
 {
  RTMP_IRQ_UNLOCK(&pAd->BulkOutLock[0], irqFlag);

  RTMPDeQueuePacket(pAd, FALSE, NUM_OF_TX_RING, MAX_TX_PROCESS);
 }
 else
 {
  if ((!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_RESET_IN_PROGRESS)) &&
   (!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS)) &&
   (!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_NIC_NOT_EXIST)) &&
   (!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_BULKOUT_RESET)))
  {
   DBGPRINT_RAW(RT_DEBUG_ERROR, ("Bulk Out Null Frame Failed, ReasonCode=%d!\n", Status));
   RTMP_SET_FLAG(pAd, fRTMP_ADAPTER_BULKOUT_RESET);
   pAd->bulkResetPipeid = (MGMTPIPEIDX | BULKOUT_MGMT_RESET_FLAG);
   RTMP_IRQ_UNLOCK(&pAd->BulkOutLock[0], irqFlag);
   RTUSBEnqueueInternalCmd(pAd, CMDTHREAD_RESET_BULK_OUT, ((void*)0), 0);
  }
  else
  {
   RTMP_IRQ_UNLOCK(&pAd->BulkOutLock[0], irqFlag);
  }
 }



 RTUSBKickBulkOut(pAd);

}
