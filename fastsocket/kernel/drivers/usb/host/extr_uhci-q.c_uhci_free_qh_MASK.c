#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uhci_qh {scalar_t__ state; int /*<<< orphan*/  dma_handle; scalar_t__ dummy_td; TYPE_1__* hep; scalar_t__ udev; int /*<<< orphan*/  node; int /*<<< orphan*/  queue; } ;
struct uhci_hcd {int /*<<< orphan*/  qh_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/ * hcpriv; } ;

/* Variables and functions */
 scalar_t__ QH_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct uhci_qh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uhci_qh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct uhci_hcd*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct uhci_hcd *uhci, struct uhci_qh *qh)
{
	FUNC0(qh->state != QH_STATE_IDLE && qh->udev);
	if (!FUNC4(&qh->queue))
		FUNC1(FUNC5(uhci), "qh %p list not empty!\n", qh);

	FUNC3(&qh->node);
	if (qh->udev) {
		qh->hep->hcpriv = NULL;
		if (qh->dummy_td)
			FUNC6(uhci, qh->dummy_td);
	}
	FUNC2(uhci->qh_pool, qh, qh->dma_handle);
}