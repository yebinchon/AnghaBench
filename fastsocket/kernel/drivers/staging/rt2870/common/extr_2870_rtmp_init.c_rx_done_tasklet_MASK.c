#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* purbb_t ;
struct TYPE_12__ {int /*<<< orphan*/  NextRxBulkInReadIndex; int /*<<< orphan*/  NextRxBulkInIndex; int /*<<< orphan*/  BulkInLock; int /*<<< orphan*/  BulkInCompleteFail; scalar_t__ NextRxBulkInPosition; int /*<<< orphan*/  BulkInComplete; int /*<<< orphan*/  PendingRx; } ;
struct TYPE_11__ {scalar_t__ InUse; scalar_t__ IRPPending; TYPE_1__* pUrb; void* Readable; scalar_t__ BulkInOffset; TYPE_4__* pAd; } ;
struct TYPE_10__ {scalar_t__ status; scalar_t__ actual_length; scalar_t__ context; } ;
struct TYPE_9__ {int /*<<< orphan*/  actual_length; } ;
typedef  TYPE_3__* PRX_CONTEXT ;
typedef  TYPE_4__* PRTMP_ADAPTER ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CMDTHREAD_RESET_BULK_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 int /*<<< orphan*/  RX_RING_SIZE ; 
 void* TRUE ; 
 scalar_t__ USB_ST_NOERROR ; 
 int fRTMP_ADAPTER_BULKIN_RESET ; 
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ; 
 int fRTMP_ADAPTER_NIC_NOT_EXIST ; 
 int fRTMP_ADAPTER_RESET_IN_PROGRESS ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	purbb_t 			pUrb;
	PRX_CONTEXT			pRxContext;
	PRTMP_ADAPTER		pAd;
	NTSTATUS			Status;
	unsigned int		IrqFlags;

	pUrb		= (purbb_t)data;
	pRxContext	= (PRX_CONTEXT)pUrb->context;
	pAd 		= pRxContext->pAd;
	Status = pUrb->status;


	FUNC3(&pAd->BulkInLock, IrqFlags);
	pRxContext->InUse = FALSE;
	pRxContext->IRPPending = FALSE;
	pRxContext->BulkInOffset += pUrb->actual_length;
	//NdisInterlockedDecrement(&pAd->PendingRx);
	pAd->PendingRx--;

	if (Status == USB_ST_NOERROR)
	{
		pAd->BulkInComplete++;
		pAd->NextRxBulkInPosition = 0;
		if (pRxContext->BulkInOffset)	// As jan's comment, it may bulk-in success but size is zero.
		{
			pRxContext->Readable = TRUE;
			FUNC2(pAd->NextRxBulkInIndex, RX_RING_SIZE);
		}
		FUNC4(&pAd->BulkInLock, IrqFlags);
	}
	else	 // STATUS_OTHER
	{
		pAd->BulkInCompleteFail++;
		// Still read this packet although it may comtain wrong bytes.
		pRxContext->Readable = FALSE;
		FUNC4(&pAd->BulkInLock, IrqFlags);

		// Parsing all packets. because after reset, the index will reset to all zero.
		if ((!FUNC6(pAd, (fRTMP_ADAPTER_RESET_IN_PROGRESS |
									fRTMP_ADAPTER_BULKIN_RESET |
									fRTMP_ADAPTER_HALT_IN_PROGRESS |
									fRTMP_ADAPTER_NIC_NOT_EXIST))))
		{

			FUNC1(RT_DEBUG_ERROR, ("Bulk In Failed. Status=%d, BIIdx=0x%x, BIRIdx=0x%x, actual_length= 0x%x\n",
							Status, pAd->NextRxBulkInIndex, pAd->NextRxBulkInReadIndex, pRxContext->pUrb->actual_length));

			FUNC5(pAd, fRTMP_ADAPTER_BULKIN_RESET);
			FUNC8(pAd, CMDTHREAD_RESET_BULK_IN, NULL, 0);
		}
	}

	FUNC0((pRxContext->InUse == pRxContext->IRPPending));

	FUNC7(pAd);

	return;

}