
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_3__* purbb_t ;
struct TYPE_13__ {int TxDmaIdx; scalar_t__ TxSwFreeIdx; TYPE_1__* Cell; } ;
struct TYPE_16__ {size_t bulkResetPipeid; TYPE_2__ MgmtRing; int MLMEBulkOutLock; int * BulkOutLock; void** BulkOutPending; } ;
struct TYPE_15__ {int SelfIdx; scalar_t__ BulkOutSize; void* bWaitingBulkOut; void* InUse; void* IRPPending; TYPE_5__* pAd; } ;
struct TYPE_14__ {scalar_t__ status; scalar_t__ context; } ;
struct TYPE_12__ {int * pNdisPacket; } ;
typedef TYPE_4__* PTX_CONTEXT ;
typedef TYPE_5__* PRTMP_ADAPTER ;
typedef int * PNDIS_PACKET ;
typedef scalar_t__ NTSTATUS ;


 int ASSERT (int) ;
 size_t BULKOUT_MGMT_RESET_FLAG ;
 int CMDTHREAD_RESET_BULK_OUT ;
 int DBGPRINT_RAW (int ,char*) ;
 void* FALSE ;
 int INC_RING_INDEX (int,scalar_t__) ;
 size_t MGMTPIPEIDX ;
 scalar_t__ MGMT_RING_SIZE ;
 int RTMPFreeNdisPacket (TYPE_5__*,int *) ;
 int RTMP_IRQ_LOCK (int *,unsigned long) ;
 int RTMP_IRQ_UNLOCK (int *,unsigned long) ;
 int RTMP_SET_FLAG (TYPE_5__*,int) ;
 scalar_t__ RTMP_TEST_FLAG (TYPE_5__*,int) ;
 int RTUSBEnqueueInternalCmd (TYPE_5__*,int ,int *,int ) ;
 int RTUSBKickBulkOut (TYPE_5__*) ;
 int RTUSB_SET_BULK_FLAG (TYPE_5__*,int ) ;
 int RT_DEBUG_ERROR ;
 scalar_t__ USB_ST_NOERROR ;
 int fRTMP_ADAPTER_BULKOUT_RESET ;
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ;
 int fRTMP_ADAPTER_NIC_NOT_EXIST ;
 int fRTMP_ADAPTER_RESET_IN_PROGRESS ;
 int fRTUSB_BULK_OUT_MLME ;

__attribute__((used)) static void rt2870_mgmt_dma_done_tasklet(unsigned long data)
{
 PRTMP_ADAPTER pAd;
 PTX_CONTEXT pMLMEContext;
 int index;
 PNDIS_PACKET pPacket;
 purbb_t pUrb;
 NTSTATUS Status;
 unsigned long IrqFlags;


 pUrb = (purbb_t)data;
 pMLMEContext = (PTX_CONTEXT)pUrb->context;
 pAd = pMLMEContext->pAd;
 Status = pUrb->status;
 index = pMLMEContext->SelfIdx;

 ASSERT((pAd->MgmtRing.TxDmaIdx == index));

 RTMP_IRQ_LOCK(&pAd->BulkOutLock[MGMTPIPEIDX], IrqFlags);


 if (Status != USB_ST_NOERROR)
 {

  if ((!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_RESET_IN_PROGRESS)) &&
   (!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS)) &&
   (!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_NIC_NOT_EXIST)) &&
   (!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_BULKOUT_RESET)))
  {
   DBGPRINT_RAW(RT_DEBUG_ERROR, ("Bulk Out MLME Failed, Status=%d!\n", Status));

   RTMP_SET_FLAG(pAd, fRTMP_ADAPTER_BULKOUT_RESET);
   pAd->bulkResetPipeid = (MGMTPIPEIDX | BULKOUT_MGMT_RESET_FLAG);
  }
 }

 pAd->BulkOutPending[MGMTPIPEIDX] = FALSE;
 RTMP_IRQ_UNLOCK(&pAd->BulkOutLock[MGMTPIPEIDX], IrqFlags);

 RTMP_IRQ_LOCK(&pAd->MLMEBulkOutLock, IrqFlags);

 pMLMEContext->IRPPending = FALSE;
 pMLMEContext->InUse = FALSE;
 pMLMEContext->bWaitingBulkOut = FALSE;
 pMLMEContext->BulkOutSize = 0;

 pPacket = pAd->MgmtRing.Cell[index].pNdisPacket;
 pAd->MgmtRing.Cell[index].pNdisPacket = ((void*)0);


 INC_RING_INDEX(pAd->MgmtRing.TxDmaIdx, MGMT_RING_SIZE);
 pAd->MgmtRing.TxSwFreeIdx++;
 RTMP_IRQ_UNLOCK(&pAd->MLMEBulkOutLock, IrqFlags);


 if (pPacket)
  RTMPFreeNdisPacket(pAd, pPacket);

 if ((RTMP_TEST_FLAG(pAd, (fRTMP_ADAPTER_RESET_IN_PROGRESS |
        fRTMP_ADAPTER_HALT_IN_PROGRESS |
        fRTMP_ADAPTER_NIC_NOT_EXIST))))
 {

 }
 else
 {
  if (RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_BULKOUT_RESET) &&
   ((pAd->bulkResetPipeid & BULKOUT_MGMT_RESET_FLAG) == BULKOUT_MGMT_RESET_FLAG))
  {
   RTUSBEnqueueInternalCmd(pAd, CMDTHREAD_RESET_BULK_OUT, ((void*)0), 0);
  }
  else
  {



   if (pAd->MgmtRing.TxSwFreeIdx < MGMT_RING_SIZE )
   {
    RTUSB_SET_BULK_FLAG(pAd, fRTUSB_BULK_OUT_MLME);
   }
    RTUSBKickBulkOut(pAd);
   }
  }

}
