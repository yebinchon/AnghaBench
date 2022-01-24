#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* purbb_t ;
typedef  size_t UCHAR ;
struct TYPE_13__ {scalar_t__ bCurWriting; TYPE_3__* pAd; } ;
struct TYPE_12__ {scalar_t__* DeQueueRunning; TYPE_1__* TxSwQueue; TYPE_4__* TxContext; } ;
struct TYPE_11__ {scalar_t__ context; } ;
struct TYPE_10__ {scalar_t__ Number; } ;
typedef  TYPE_3__* PRTMP_ADAPTER ;
typedef  TYPE_4__* PHT_TX_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  CMDTHREAD_RESET_BULK_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MAX_TX_PROCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 int fRTMP_ADAPTER_BULKOUT_RESET ; 
 int fRTMP_ADAPTER_HALT_IN_PROGRESS ; 
 int fRTMP_ADAPTER_NIC_NOT_EXIST ; 
 int fRTMP_ADAPTER_RESET_IN_PROGRESS ; 
 int fRTUSB_BULK_OUT_DATA_NORMAL ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	PRTMP_ADAPTER		pAd;
	PHT_TX_CONTEXT		pHTTXContext;
	UCHAR				BulkOutPipeId = 4;
	purbb_t				pUrb;

	FUNC0(RT_DEBUG_ERROR, ("--->hcca_dma_done_tasklet\n"));

	pUrb			= (purbb_t)data;
	pHTTXContext	= (PHT_TX_CONTEXT)pUrb->context;
	pAd				= pHTTXContext->pAd;

	FUNC6((unsigned long)pUrb);

	if ((FUNC2(pAd, (fRTMP_ADAPTER_RESET_IN_PROGRESS |
								fRTMP_ADAPTER_HALT_IN_PROGRESS |
								fRTMP_ADAPTER_NIC_NOT_EXIST))))
	{
		// do nothing and return directly.
	}
	else
	{
		if (FUNC2(pAd, fRTMP_ADAPTER_BULKOUT_RESET))
		{
			FUNC3(pAd, CMDTHREAD_RESET_BULK_OUT, NULL, 0);
		}
		else
		{	pHTTXContext = &pAd->TxContext[BulkOutPipeId];
			if ((pAd->TxSwQueue[BulkOutPipeId].Number > 0) &&
				/*((pHTTXContext->CurWritePosition > (pHTTXContext->NextBulkOutPosition + 0x6000)) || (pHTTXContext->NextBulkOutPosition > pHTTXContext->CurWritePosition + 0x6000)) && */
				(pAd->DeQueueRunning[BulkOutPipeId] == FALSE) &&
				(pHTTXContext->bCurWriting == FALSE))
			{
				FUNC1(pAd, FALSE, BulkOutPipeId, MAX_TX_PROCESS);
			}

			FUNC5(pAd, fRTUSB_BULK_OUT_DATA_NORMAL<<4);
			FUNC4(pAd);
		}
	}

	FUNC0(RT_DEBUG_ERROR, ("<---hcca_dma_done_tasklet\n"));
}