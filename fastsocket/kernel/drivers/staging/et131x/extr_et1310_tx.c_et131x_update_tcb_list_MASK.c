#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int nBusySend; TYPE_4__* CurrSendHead; int /*<<< orphan*/ * CurrSendTail; } ;
struct et131x_adapter {int /*<<< orphan*/  TCBSendQLock; int /*<<< orphan*/  netdev; TYPE_3__ TxRing; TYPE_2__* regs; } ;
struct TYPE_9__ {int WrIndex; struct TYPE_9__* Next; } ;
struct TYPE_6__ {int /*<<< orphan*/  NewServiceComplete; } ;
struct TYPE_7__ {TYPE_1__ txdma; } ;
typedef  TYPE_4__* PMP_TCB ;

/* Variables and functions */
 int ET_DMA10_MASK ; 
 int ET_DMA10_WRAP ; 
 int FUNC0 (int) ; 
 int NUM_TCB ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct et131x_adapter *etdev)
{
	unsigned long flags;
	u32 ServiceComplete;
	PMP_TCB pMpTcb;
	u32 index;

	ServiceComplete = FUNC3(&etdev->regs->txdma.NewServiceComplete);
	index = FUNC0(ServiceComplete);

	/* Has the ring wrapped?  Process any descriptors that do not have
	 * the same "wrap" indicator as the current completion indicator
	 */
	FUNC4(&etdev->TCBSendQLock, flags);

	pMpTcb = etdev->TxRing.CurrSendHead;

	while (pMpTcb &&
	       ((ServiceComplete ^ pMpTcb->WrIndex) & ET_DMA10_WRAP) &&
	       index < FUNC0(pMpTcb->WrIndex)) {
		etdev->TxRing.nBusySend--;
		etdev->TxRing.CurrSendHead = pMpTcb->Next;
		if (pMpTcb->Next == NULL)
			etdev->TxRing.CurrSendTail = NULL;

		FUNC5(&etdev->TCBSendQLock, flags);
		FUNC1(etdev, pMpTcb);
		FUNC4(&etdev->TCBSendQLock, flags);

		/* Goto the next packet */
		pMpTcb = etdev->TxRing.CurrSendHead;
	}
	while (pMpTcb &&
	       !((ServiceComplete ^ pMpTcb->WrIndex) & ET_DMA10_WRAP)
	       && index > (pMpTcb->WrIndex & ET_DMA10_MASK)) {
		etdev->TxRing.nBusySend--;
		etdev->TxRing.CurrSendHead = pMpTcb->Next;
		if (pMpTcb->Next == NULL)
			etdev->TxRing.CurrSendTail = NULL;

		FUNC5(&etdev->TCBSendQLock, flags);
		FUNC1(etdev, pMpTcb);
		FUNC4(&etdev->TCBSendQLock, flags);

		/* Goto the next packet */
		pMpTcb = etdev->TxRing.CurrSendHead;
	}

	/* Wake up the queue when we hit a low-water mark */
	if (etdev->TxRing.nBusySend <= (NUM_TCB / 3))
		FUNC2(etdev->netdev);

	FUNC5(&etdev->TCBSendQLock, flags);
}