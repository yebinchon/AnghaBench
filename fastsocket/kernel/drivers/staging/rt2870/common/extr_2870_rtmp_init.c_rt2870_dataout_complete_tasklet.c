
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_4__* purbb_t ;
typedef size_t UCHAR ;
struct TYPE_19__ {size_t BulkOutPipeId; size_t NextBulkOutPosition; scalar_t__ ENextBulkOutPosition; scalar_t__ CurWritePosition; TYPE_3__* TransferBuffer; void* IRPPending; TYPE_5__* pAd; } ;
struct TYPE_14__ {int GoodTransmits; } ;
struct TYPE_18__ {size_t bulkResetPipeid; int BulkOutCompleteOther; int BulkOutComplete; int BulkOutReq; int * BulkOutLock; int * bulkResetReq; TYPE_1__ Counters8023; scalar_t__* watchDogTxPendingCnt; void** BulkOutPending; int BulkOutDataOneSecCount; scalar_t__ OS_Cookie; } ;
struct TYPE_17__ {scalar_t__ status; scalar_t__ context; } ;
struct TYPE_15__ {int * WirelessPacket; } ;
struct TYPE_16__ {TYPE_2__ field; } ;
typedef int * PUCHAR ;
typedef TYPE_5__* PRTMP_ADAPTER ;
typedef scalar_t__ POS_COOKIE ;
typedef TYPE_6__* PHT_TX_CONTEXT ;
typedef scalar_t__ NTSTATUS ;


 int DBGPRINT_RAW (int ,char*) ;
 void* FALSE ;
 int FREE_HTTX_RING (TYPE_5__*,size_t,TYPE_6__*) ;
 int RTMP_IRQ_LOCK (int *,unsigned long) ;
 int RTMP_IRQ_UNLOCK (int *,unsigned long) ;
 int RTMP_SET_FLAG (TYPE_5__*,int) ;
 int RTMP_TEST_FLAG (TYPE_5__*,int) ;
 int RTUSBKickBulkOut (TYPE_5__*) ;
 int RTUSB_SET_BULK_FLAG (TYPE_5__*,size_t) ;
 int RTUSB_TEST_BULK_FLAG (TYPE_5__*,size_t) ;
 int RT_DEBUG_ERROR ;
 scalar_t__ USB_ST_NOERROR ;
 int fRTMP_ADAPTER_BULKOUT_RESET ;
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ;
 int fRTMP_ADAPTER_NIC_NOT_EXIST ;
 int fRTMP_ADAPTER_RESET_IN_PROGRESS ;
 size_t fRTUSB_BULK_OUT_DATA_FRAG ;
 size_t fRTUSB_BULK_OUT_DATA_NORMAL ;

__attribute__((used)) static void rt2870_dataout_complete_tasklet(unsigned long data)
{
 PRTMP_ADAPTER pAd;
 purbb_t pUrb;
 POS_COOKIE pObj;
 PHT_TX_CONTEXT pHTTXContext;
 UCHAR BulkOutPipeId;
 NTSTATUS Status;
 unsigned long IrqFlags;


 pUrb = (purbb_t)data;
 pHTTXContext = (PHT_TX_CONTEXT)pUrb->context;
 pAd = pHTTXContext->pAd;
 pObj = (POS_COOKIE) pAd->OS_Cookie;
 Status = pUrb->status;


 BulkOutPipeId = pHTTXContext->BulkOutPipeId;
 pAd->BulkOutDataOneSecCount++;




 RTMP_IRQ_LOCK(&pAd->BulkOutLock[BulkOutPipeId], IrqFlags);
 pAd->BulkOutPending[BulkOutPipeId] = FALSE;
 pHTTXContext->IRPPending = FALSE;
 pAd->watchDogTxPendingCnt[BulkOutPipeId] = 0;

 if (Status == USB_ST_NOERROR)
 {
  pAd->BulkOutComplete++;

  RTMP_IRQ_UNLOCK(&pAd->BulkOutLock[BulkOutPipeId], IrqFlags);

  pAd->Counters8023.GoodTransmits++;

  FREE_HTTX_RING(pAd, BulkOutPipeId, pHTTXContext);



 }
 else
 {
  PUCHAR pBuf;

  pAd->BulkOutCompleteOther++;

  pBuf = &pHTTXContext->TransferBuffer->field.WirelessPacket[pHTTXContext->NextBulkOutPosition];

  if (!RTMP_TEST_FLAG(pAd, (fRTMP_ADAPTER_RESET_IN_PROGRESS |
         fRTMP_ADAPTER_HALT_IN_PROGRESS |
         fRTMP_ADAPTER_NIC_NOT_EXIST |
         fRTMP_ADAPTER_BULKOUT_RESET)))
  {
   RTMP_SET_FLAG(pAd, fRTMP_ADAPTER_BULKOUT_RESET);
   pAd->bulkResetPipeid = BulkOutPipeId;
   pAd->bulkResetReq[BulkOutPipeId] = pAd->BulkOutReq;
  }
  RTMP_IRQ_UNLOCK(&pAd->BulkOutLock[BulkOutPipeId], IrqFlags);

  DBGPRINT_RAW(RT_DEBUG_ERROR, ("BulkOutDataPacket failed: ReasonCode=%d!\n", Status));
  DBGPRINT_RAW(RT_DEBUG_ERROR, ("\t>>BulkOut Req=0x%lx, Complete=0x%lx, Other=0x%lx\n", pAd->BulkOutReq, pAd->BulkOutComplete, pAd->BulkOutCompleteOther));
  DBGPRINT_RAW(RT_DEBUG_ERROR, ("\t>>BulkOut Header:%x %x %x %x %x %x %x %x\n", pBuf[0], pBuf[1], pBuf[2], pBuf[3], pBuf[4], pBuf[5], pBuf[6], pBuf[7]));


 }






 if ((pHTTXContext->ENextBulkOutPosition != pHTTXContext->CurWritePosition) &&
  (pHTTXContext->ENextBulkOutPosition != (pHTTXContext->CurWritePosition+8)) &&
  !RTUSB_TEST_BULK_FLAG(pAd, (fRTUSB_BULK_OUT_DATA_FRAG << BulkOutPipeId)))
 {

  RTUSB_SET_BULK_FLAG(pAd, (fRTUSB_BULK_OUT_DATA_NORMAL << BulkOutPipeId));
 }




 RTUSBKickBulkOut(pAd);
}
