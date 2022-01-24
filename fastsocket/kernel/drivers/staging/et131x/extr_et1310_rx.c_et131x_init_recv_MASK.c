#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct et131x_adapter {TYPE_1__* pdev; int /*<<< orphan*/  RxRing; } ;
struct TYPE_9__ {int /*<<< orphan*/  list_node; } ;
struct TYPE_8__ {scalar_t__ NumRfd; int /*<<< orphan*/  RecvLookaside; int /*<<< orphan*/  nReadyRecv; int /*<<< orphan*/  RecvList; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ RX_RING_t ;
typedef  TYPE_3__* PMP_RFD ;
typedef  TYPE_3__ MP_RFD ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 scalar_t__ NIC_MIN_NUM_RFD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct et131x_adapter*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(struct et131x_adapter *adapter)
{
	int status = -ENOMEM;
	PMP_RFD pMpRfd = NULL;
	uint32_t RfdCount;
	uint32_t TotalNumRfd = 0;
	RX_RING_t *rx_ring = NULL;

	/* Setup some convenience pointers */
	rx_ring = (RX_RING_t *) &adapter->RxRing;

	/* Setup each RFD */
	for (RfdCount = 0; RfdCount < rx_ring->NumRfd; RfdCount++) {
		pMpRfd = (MP_RFD *) FUNC2(rx_ring->RecvLookaside,
						     GFP_ATOMIC | GFP_DMA);

		if (!pMpRfd) {
			FUNC0(&adapter->pdev->dev,
				  "Couldn't alloc RFD out of kmem_cache\n");
			status = -ENOMEM;
			continue;
		}

		status = FUNC1(adapter, pMpRfd);
		if (status != 0) {
			FUNC0(&adapter->pdev->dev,
				  "Couldn't alloc packet for RFD\n");
			FUNC3(rx_ring->RecvLookaside, pMpRfd);
			continue;
		}

		/* Add this RFD to the RecvList */
		FUNC4(&pMpRfd->list_node, &rx_ring->RecvList);

		/* Increment both the available RFD's, and the total RFD's. */
		rx_ring->nReadyRecv++;
		TotalNumRfd++;
	}

	if (TotalNumRfd > NIC_MIN_NUM_RFD)
		status = 0;

	rx_ring->NumRfd = TotalNumRfd;

	if (status != 0) {
		FUNC3(rx_ring->RecvLookaside, pMpRfd);
		FUNC0(&adapter->pdev->dev,
			  "Allocation problems in et131x_init_recv\n");
	}
	return status;
}