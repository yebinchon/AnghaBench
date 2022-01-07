
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* purbb_t ;
struct TYPE_12__ {int NextRxBulkInReadIndex; int NextRxBulkInIndex; int BulkInLock; int BulkInCompleteFail; scalar_t__ NextRxBulkInPosition; int BulkInComplete; int PendingRx; } ;
struct TYPE_11__ {scalar_t__ InUse; scalar_t__ IRPPending; TYPE_1__* pUrb; void* Readable; scalar_t__ BulkInOffset; TYPE_4__* pAd; } ;
struct TYPE_10__ {scalar_t__ status; scalar_t__ actual_length; scalar_t__ context; } ;
struct TYPE_9__ {int actual_length; } ;
typedef TYPE_3__* PRX_CONTEXT ;
typedef TYPE_4__* PRTMP_ADAPTER ;
typedef scalar_t__ NTSTATUS ;


 int ASSERT (int) ;
 int CMDTHREAD_RESET_BULK_IN ;
 int DBGPRINT_RAW (int ,char*) ;
 void* FALSE ;
 int INC_RING_INDEX (int ,int ) ;
 int RTMP_IRQ_LOCK (int *,unsigned int) ;
 int RTMP_IRQ_UNLOCK (int *,unsigned int) ;
 int RTMP_SET_FLAG (TYPE_4__*,int) ;
 int RTMP_TEST_FLAG (TYPE_4__*,int) ;
 int RTUSBBulkReceive (TYPE_4__*) ;
 int RTUSBEnqueueInternalCmd (TYPE_4__*,int ,int *,int ) ;
 int RT_DEBUG_ERROR ;
 int RX_RING_SIZE ;
 void* TRUE ;
 scalar_t__ USB_ST_NOERROR ;
 int fRTMP_ADAPTER_BULKIN_RESET ;
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ;
 int fRTMP_ADAPTER_NIC_NOT_EXIST ;
 int fRTMP_ADAPTER_RESET_IN_PROGRESS ;

__attribute__((used)) static void rx_done_tasklet(unsigned long data)
{
 purbb_t pUrb;
 PRX_CONTEXT pRxContext;
 PRTMP_ADAPTER pAd;
 NTSTATUS Status;
 unsigned int IrqFlags;

 pUrb = (purbb_t)data;
 pRxContext = (PRX_CONTEXT)pUrb->context;
 pAd = pRxContext->pAd;
 Status = pUrb->status;


 RTMP_IRQ_LOCK(&pAd->BulkInLock, IrqFlags);
 pRxContext->InUse = FALSE;
 pRxContext->IRPPending = FALSE;
 pRxContext->BulkInOffset += pUrb->actual_length;

 pAd->PendingRx--;

 if (Status == USB_ST_NOERROR)
 {
  pAd->BulkInComplete++;
  pAd->NextRxBulkInPosition = 0;
  if (pRxContext->BulkInOffset)
  {
   pRxContext->Readable = TRUE;
   INC_RING_INDEX(pAd->NextRxBulkInIndex, RX_RING_SIZE);
  }
  RTMP_IRQ_UNLOCK(&pAd->BulkInLock, IrqFlags);
 }
 else
 {
  pAd->BulkInCompleteFail++;

  pRxContext->Readable = FALSE;
  RTMP_IRQ_UNLOCK(&pAd->BulkInLock, IrqFlags);


  if ((!RTMP_TEST_FLAG(pAd, (fRTMP_ADAPTER_RESET_IN_PROGRESS |
         fRTMP_ADAPTER_BULKIN_RESET |
         fRTMP_ADAPTER_HALT_IN_PROGRESS |
         fRTMP_ADAPTER_NIC_NOT_EXIST))))
  {

   DBGPRINT_RAW(RT_DEBUG_ERROR, ("Bulk In Failed. Status=%d, BIIdx=0x%x, BIRIdx=0x%x, actual_length= 0x%x\n",
       Status, pAd->NextRxBulkInIndex, pAd->NextRxBulkInReadIndex, pRxContext->pUrb->actual_length));

   RTMP_SET_FLAG(pAd, fRTMP_ADAPTER_BULKIN_RESET);
   RTUSBEnqueueInternalCmd(pAd, CMDTHREAD_RESET_BULK_IN, ((void*)0), 0);
  }
 }

 ASSERT((pRxContext->InUse == pRxContext->IRPPending));

 RTUSBBulkReceive(pAd);

 return;

}
