#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* purbb_t ;
struct TYPE_13__ {int TxDmaIdx; scalar_t__ TxSwFreeIdx; TYPE_1__* Cell; } ;
struct TYPE_16__ {size_t bulkResetPipeid; TYPE_2__ MgmtRing; int /*<<< orphan*/  MLMEBulkOutLock; int /*<<< orphan*/ * BulkOutLock; void** BulkOutPending; } ;
struct TYPE_15__ {int SelfIdx; scalar_t__ BulkOutSize; void* bWaitingBulkOut; void* InUse; void* IRPPending; TYPE_5__* pAd; } ;
struct TYPE_14__ {scalar_t__ status; scalar_t__ context; } ;
struct TYPE_12__ {int /*<<< orphan*/ * pNdisPacket; } ;
typedef  TYPE_4__* PTX_CONTEXT ;
typedef  TYPE_5__* PRTMP_ADAPTER ;
typedef  int /*<<< orphan*/ * PNDIS_PACKET ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t BULKOUT_MGMT_RESET_FLAG ; 
 int /*<<< orphan*/  CMDTHREAD_RESET_BULK_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 size_t MGMTPIPEIDX ; 
 scalar_t__ MGMT_RING_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 scalar_t__ USB_ST_NOERROR ; 
 int fRTMP_ADAPTER_BULKOUT_RESET ; 
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ; 
 int fRTMP_ADAPTER_NIC_NOT_EXIST ; 
 int fRTMP_ADAPTER_RESET_IN_PROGRESS ; 
 int /*<<< orphan*/  fRTUSB_BULK_OUT_MLME ; 

__attribute__((used)) static void FUNC11(unsigned long data)
{
	PRTMP_ADAPTER 	pAd;
	PTX_CONTEXT		pMLMEContext;
	int				index;
	PNDIS_PACKET	pPacket;
	purbb_t			pUrb;
	NTSTATUS		Status;
	unsigned long	IrqFlags;


	pUrb			= (purbb_t)data;
	pMLMEContext	= (PTX_CONTEXT)pUrb->context;
	pAd 			= pMLMEContext->pAd;
	Status			= pUrb->status;
	index 			= pMLMEContext->SelfIdx;

	FUNC0((pAd->MgmtRing.TxDmaIdx == index));

	FUNC4(&pAd->BulkOutLock[MGMTPIPEIDX], IrqFlags);


	if (Status != USB_ST_NOERROR)
	{
		//Bulk-Out fail status handle
		if ((!FUNC7(pAd, fRTMP_ADAPTER_RESET_IN_PROGRESS)) &&
			(!FUNC7(pAd, fRTMP_ADAPTER_HALT_IN_PROGRESS)) &&
			(!FUNC7(pAd, fRTMP_ADAPTER_NIC_NOT_EXIST)) &&
			(!FUNC7(pAd, fRTMP_ADAPTER_BULKOUT_RESET)))
		{
			FUNC1(RT_DEBUG_ERROR, ("Bulk Out MLME Failed, Status=%d!\n", Status));
			// TODO: How to handle about the MLMEBulkOut failed issue. Need to resend the mgmt pkt?
			FUNC6(pAd, fRTMP_ADAPTER_BULKOUT_RESET);
			pAd->bulkResetPipeid = (MGMTPIPEIDX | BULKOUT_MGMT_RESET_FLAG);
		}
	}

	pAd->BulkOutPending[MGMTPIPEIDX] = FALSE;
	FUNC5(&pAd->BulkOutLock[MGMTPIPEIDX], IrqFlags);

	FUNC4(&pAd->MLMEBulkOutLock, IrqFlags);
	// Reset MLME context flags
	pMLMEContext->IRPPending = FALSE;
	pMLMEContext->InUse = FALSE;
	pMLMEContext->bWaitingBulkOut = FALSE;
	pMLMEContext->BulkOutSize = 0;

	pPacket = pAd->MgmtRing.Cell[index].pNdisPacket;
	pAd->MgmtRing.Cell[index].pNdisPacket = NULL;

	// Increase MgmtRing Index
	FUNC2(pAd->MgmtRing.TxDmaIdx, MGMT_RING_SIZE);
	pAd->MgmtRing.TxSwFreeIdx++;
	FUNC5(&pAd->MLMEBulkOutLock, IrqFlags);

	// No-matter success or fail, we free the mgmt packet.
	if (pPacket)
		FUNC3(pAd, pPacket);

	if ((FUNC7(pAd, (fRTMP_ADAPTER_RESET_IN_PROGRESS |
								fRTMP_ADAPTER_HALT_IN_PROGRESS |
								fRTMP_ADAPTER_NIC_NOT_EXIST))))
	{
		// do nothing and return directly.
	}
	else
	{
		if (FUNC7(pAd, fRTMP_ADAPTER_BULKOUT_RESET) &&
			((pAd->bulkResetPipeid & BULKOUT_MGMT_RESET_FLAG) == BULKOUT_MGMT_RESET_FLAG))
		{	// For Mgmt Bulk-Out failed, ignore it now.
			FUNC8(pAd, CMDTHREAD_RESET_BULK_OUT, NULL, 0);
		}
		else
		{

			// Always call Bulk routine, even reset bulk.
			// The protectioon of rest bulk should be in BulkOut routine
			if (pAd->MgmtRing.TxSwFreeIdx < MGMT_RING_SIZE /* pMLMEContext->bWaitingBulkOut == TRUE */)
			{
				FUNC10(pAd, fRTUSB_BULK_OUT_MLME);
			}
				FUNC9(pAd);
			}
		}

}