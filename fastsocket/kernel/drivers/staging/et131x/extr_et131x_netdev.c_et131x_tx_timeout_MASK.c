#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ pTxDescRingVa; TYPE_3__* CurrSendHead; } ;
struct et131x_adapter {int Flags; int /*<<< orphan*/  TCBSendQLock; TYPE_2__* pdev; TYPE_1__ TxRing; } ;
struct TYPE_6__ {scalar_t__ Count; int /*<<< orphan*/  Flags; int /*<<< orphan*/  WrIndex; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  TX_DESC_ENTRY_t ;
typedef  TYPE_3__* PMP_TCB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIC_SEND_HANG_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int fMP_ADAPTER_HARDWARE_ERROR ; 
 int fMP_ADAPTER_LINK_DETECTION ; 
 int fMP_ADAPTER_NON_RECOVER_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct et131x_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct net_device *netdev)
{
	struct et131x_adapter *etdev = FUNC6(netdev);
	PMP_TCB pMpTcb;
	unsigned long flags;

	/* Just skip this part if the adapter is doing link detection */
	if (etdev->Flags & fMP_ADAPTER_LINK_DETECTION)
		return;

	/* Any nonrecoverable hardware error?
	 * Checks adapter->flags for any failure in phy reading
	 */
	if (etdev->Flags & fMP_ADAPTER_NON_RECOVER_ERROR)
		return;

	/* Hardware failure? */
	if (etdev->Flags & fMP_ADAPTER_HARDWARE_ERROR) {
		FUNC1(&etdev->pdev->dev, "hardware error - reset\n");
		return;
	}

	/* Is send stuck? */
	FUNC7(&etdev->TCBSendQLock, flags);

	pMpTcb = etdev->TxRing.CurrSendHead;

	if (pMpTcb != NULL) {
		pMpTcb->Count++;

		if (pMpTcb->Count > NIC_SEND_HANG_THRESHOLD) {
			TX_DESC_ENTRY_t StuckDescriptors[10];

			if (FUNC0(pMpTcb->WrIndex) > 7) {
				FUNC5(StuckDescriptors,
				       etdev->TxRing.pTxDescRingVa +
				       FUNC0(pMpTcb->WrIndex) - 6,
				       sizeof(TX_DESC_ENTRY_t) * 10);
			}

			FUNC8(&etdev->TCBSendQLock,
					       flags);

			FUNC2(&etdev->pdev->dev,
				"Send stuck - reset.  pMpTcb->WrIndex %x, Flags 0x%08x\n",
				pMpTcb->WrIndex,
				pMpTcb->Flags);

			FUNC3(netdev);
			FUNC4(netdev);

			return;
		}
	}

	FUNC8(&etdev->TCBSendQLock, flags);
}