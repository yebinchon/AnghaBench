#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct net_device_stats {int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_11__ {scalar_t__ nBusySend; TYPE_5__* TCBReadyQueueTail; TYPE_5__* TCBReadyQueueHead; TYPE_4__* pTxDescRingVa; } ;
struct TYPE_10__ {int /*<<< orphan*/  opackets; int /*<<< orphan*/  unixmt; int /*<<< orphan*/  multixmt; int /*<<< orphan*/  brdcstxmt; } ;
struct et131x_adapter {TYPE_3__ TxRing; int /*<<< orphan*/  TCBReadyQLock; TYPE_2__ Stats; int /*<<< orphan*/  pdev; struct net_device_stats net_stats; } ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_13__ {int Flags; struct TYPE_13__* Next; TYPE_8__* Packet; int /*<<< orphan*/  WrIndexStart; int /*<<< orphan*/  WrIndex; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
struct TYPE_12__ {TYPE_1__ word2; int /*<<< orphan*/  DataBufferPtrLow; } ;
typedef  TYPE_4__ TX_DESC_ENTRY_t ;
typedef  TYPE_5__* PMP_TCB ;
typedef  int /*<<< orphan*/  MP_TCB ;

/* Variables and functions */
 int /*<<< orphan*/  ET_DMA10_MASK ; 
 int /*<<< orphan*/  ET_DMA10_WRAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NUM_DESC_PER_RING_TX ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int fMP_DEST_BROAD ; 
 int fMP_DEST_MULTI ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

inline void FUNC9(struct et131x_adapter *etdev,
							PMP_TCB pMpTcb)
{
	unsigned long flags;
	TX_DESC_ENTRY_t *desc = NULL;
	struct net_device_stats *stats = &etdev->net_stats;

	if (pMpTcb->Flags & fMP_DEST_BROAD)
		FUNC3(&etdev->Stats.brdcstxmt);
	else if (pMpTcb->Flags & fMP_DEST_MULTI)
		FUNC3(&etdev->Stats.multixmt);
	else
		FUNC3(&etdev->Stats.unixmt);

	if (pMpTcb->Packet) {
		stats->tx_bytes += pMpTcb->Packet->len;

		/* Iterate through the TX descriptors on the ring
		 * corresponding to this packet and umap the fragments
		 * they point to
		 */
		do {
			desc =
			    (TX_DESC_ENTRY_t *) (etdev->TxRing.pTxDescRingVa +
			    	FUNC0(pMpTcb->WrIndexStart));

			FUNC6(etdev->pdev,
					 desc->DataBufferPtrLow,
					 desc->word2.value, PCI_DMA_TODEVICE);

			FUNC2(&pMpTcb->WrIndexStart, 1);
			if (FUNC0(pMpTcb->WrIndexStart) >=
			    NUM_DESC_PER_RING_TX) {
			    	pMpTcb->WrIndexStart &= ~ET_DMA10_MASK;
			    	pMpTcb->WrIndexStart ^= ET_DMA10_WRAP;
			}
		} while (desc != (etdev->TxRing.pTxDescRingVa +
				FUNC0(pMpTcb->WrIndex)));

		FUNC4(pMpTcb->Packet);
	}

	FUNC5(pMpTcb, 0, sizeof(MP_TCB));

	/* Add the TCB to the Ready Q */
	FUNC7(&etdev->TCBReadyQLock, flags);

	etdev->Stats.opackets++;

	if (etdev->TxRing.TCBReadyQueueTail) {
		etdev->TxRing.TCBReadyQueueTail->Next = pMpTcb;
	} else {
		/* Apparently ready Q is empty. */
		etdev->TxRing.TCBReadyQueueHead = pMpTcb;
	}

	etdev->TxRing.TCBReadyQueueTail = pMpTcb;

	FUNC8(&etdev->TCBReadyQLock, flags);
	FUNC1(etdev->TxRing.nBusySend < 0);
}