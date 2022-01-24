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
struct ehci_sitd {int dummy; } ;
struct ehci_qtd {int dummy; } ;
struct ehci_qh_hw {int /*<<< orphan*/  hw_token; void* hw_alt_next; void* hw_qtd_next; void* hw_next; } ;
struct ehci_itd {int dummy; } ;
struct ehci_hcd {int periodic_size; int /*<<< orphan*/ * pshadow; void** periodic; TYPE_2__* dummy; scalar_t__ use_dummy_qh; int /*<<< orphan*/  periodic_dma; void* sitd_pool; void* itd_pool; void* async; void* qh_pool; void* qtd_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  void* __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct TYPE_5__ {void* qh_dma; struct ehci_qh_hw* hw; } ;

/* Variables and functions */
 void* FUNC0 (struct ehci_hcd*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  QTD_STS_ACTIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*) ; 
 void* FUNC5 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (struct ehci_hcd*) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (struct ehci_hcd *ehci, gfp_t flags)
{
	int i;

	/* QTDs for control/bulk/intr transfers */
	ehci->qtd_pool = FUNC2 ("ehci_qtd",
			FUNC6(ehci)->self.controller,
			sizeof (struct ehci_qtd),
			32 /* byte alignment (for hw parts) */,
			4096 /* can't cross 4K */);
	if (!ehci->qtd_pool) {
		goto fail;
	}

	/* QHs for control/bulk/intr transfers */
	ehci->qh_pool = FUNC2 ("ehci_qh",
			FUNC6(ehci)->self.controller,
			sizeof(struct ehci_qh_hw),
			32 /* byte alignment (for hw parts) */,
			4096 /* can't cross 4K */);
	if (!ehci->qh_pool) {
		goto fail;
	}
	ehci->async = FUNC5 (ehci, flags);
	if (!ehci->async) {
		goto fail;
	}

	/* ITD for high speed ISO transfers */
	ehci->itd_pool = FUNC2 ("ehci_itd",
			FUNC6(ehci)->self.controller,
			sizeof (struct ehci_itd),
			32 /* byte alignment (for hw parts) */,
			4096 /* can't cross 4K */);
	if (!ehci->itd_pool) {
		goto fail;
	}

	/* SITD for full/low speed split ISO transfers */
	ehci->sitd_pool = FUNC2 ("ehci_sitd",
			FUNC6(ehci)->self.controller,
			sizeof (struct ehci_sitd),
			32 /* byte alignment (for hw parts) */,
			4096 /* can't cross 4K */);
	if (!ehci->sitd_pool) {
		goto fail;
	}

	/* Hardware periodic table */
	ehci->periodic = (__le32 *)
		FUNC1 (FUNC6(ehci)->self.controller,
			ehci->periodic_size * sizeof(__le32),
			&ehci->periodic_dma, 0);
	if (ehci->periodic == NULL) {
		goto fail;
	}

	if (ehci->use_dummy_qh) {
		struct ehci_qh_hw	*hw;
		ehci->dummy = FUNC5(ehci, flags);
		if (!ehci->dummy)
			goto fail;

		hw = ehci->dummy->hw;
		hw->hw_next = FUNC0(ehci);
		hw->hw_qtd_next = FUNC0(ehci);
		hw->hw_alt_next = FUNC0(ehci);
		hw->hw_token &= ~QTD_STS_ACTIVE;
		ehci->dummy->hw = hw;

		for (i = 0; i < ehci->periodic_size; i++)
			ehci->periodic[i] = ehci->dummy->qh_dma;
	} else {
		for (i = 0; i < ehci->periodic_size; i++)
			ehci->periodic[i] = FUNC0(ehci);
	}

	/* software shadow of hardware table */
	ehci->pshadow = FUNC7(ehci->periodic_size, sizeof(void *), flags);
	if (ehci->pshadow != NULL)
		return 0;

fail:
	FUNC3 (ehci, "couldn't init memory\n");
	FUNC4 (ehci);
	return -ENOMEM;
}