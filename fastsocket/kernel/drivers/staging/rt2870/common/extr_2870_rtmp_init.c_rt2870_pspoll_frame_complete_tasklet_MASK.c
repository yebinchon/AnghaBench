#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* purbb_t ;
struct TYPE_11__ {int bulkResetPipeid; int /*<<< orphan*/ * BulkOutLock; void** BulkOutPending; scalar_t__* watchDogTxPendingCnt; } ;
struct TYPE_10__ {void* InUse; void* IRPPending; TYPE_3__* pAd; } ;
struct TYPE_9__ {scalar_t__ status; scalar_t__ context; } ;
typedef  TYPE_2__* PTX_CONTEXT ;
typedef  TYPE_3__* PRTMP_ADAPTER ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int BULKOUT_MGMT_RESET_FLAG ; 
 int /*<<< orphan*/  CMDTHREAD_RESET_BULK_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  MAX_TX_PROCESS ; 
 int MGMTPIPEIDX ; 
 int /*<<< orphan*/  NUM_OF_TX_RING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 scalar_t__ USB_ST_NOERROR ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_BULKOUT_RESET ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_HALT_IN_PROGRESS ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_NIC_NOT_EXIST ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_RESET_IN_PROGRESS ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	PRTMP_ADAPTER	pAd;
	PTX_CONTEXT		pPsPollContext;
	purbb_t			pUrb;
	NTSTATUS		Status;


	pUrb			= (purbb_t)data;
	pPsPollContext	= (PTX_CONTEXT)pUrb->context;
	pAd				= pPsPollContext->pAd;
	Status			= pUrb->status;

	// Reset PsPoll context flags
	pPsPollContext->IRPPending	= FALSE;
	pPsPollContext->InUse		= FALSE;
	pAd->watchDogTxPendingCnt[0] = 0;

	if (Status == USB_ST_NOERROR)
	{
		FUNC1(pAd, FALSE, NUM_OF_TX_RING, MAX_TX_PROCESS);
	}
	else // STATUS_OTHER
	{
		if ((!FUNC5(pAd, fRTMP_ADAPTER_RESET_IN_PROGRESS)) &&
			(!FUNC5(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS)) &&
			(!FUNC5(pAd, fRTMP_ADAPTER_NIC_NOT_EXIST)) &&
			(!FUNC5(pAd, fRTMP_ADAPTER_BULKOUT_RESET)))
		{
			FUNC0(RT_DEBUG_ERROR, ("Bulk Out PSPoll Failed\n"));
			FUNC4(pAd, fRTMP_ADAPTER_BULKOUT_RESET);
			pAd->bulkResetPipeid = (MGMTPIPEIDX | BULKOUT_MGMT_RESET_FLAG);
			FUNC6(pAd, CMDTHREAD_RESET_BULK_OUT, NULL, 0);
		}
	}

	FUNC2(&pAd->BulkOutLock[0]);
	pAd->BulkOutPending[0] = FALSE;
	FUNC3(&pAd->BulkOutLock[0]);

	// Always call Bulk routine, even reset bulk.
	// The protectioon of rest bulk should be in BulkOut routine
	FUNC7(pAd);

}