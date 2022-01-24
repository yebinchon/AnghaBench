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
struct TYPE_2__ {scalar_t__ ptr; } ;
struct ehci_qh {int /*<<< orphan*/  qh_dma; int /*<<< orphan*/  hw; scalar_t__ dummy; TYPE_1__ qh_next; int /*<<< orphan*/  qtd_list; struct ehci_hcd* ehci; } ;
struct ehci_hcd {int /*<<< orphan*/  qh_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ehci_qh *qh)
{
	struct ehci_hcd *ehci = qh->ehci;

	/* clean qtds first, and know this is not linked */
	if (!FUNC5 (&qh->qtd_list) || qh->qh_next.ptr) {
		FUNC2 (ehci, "unused qh not empty!\n");
		FUNC0 ();
	}
	if (qh->dummy)
		FUNC3 (ehci, qh->dummy);
	FUNC1(ehci->qh_pool, qh->hw, qh->qh_dma);
	FUNC4(qh);
}