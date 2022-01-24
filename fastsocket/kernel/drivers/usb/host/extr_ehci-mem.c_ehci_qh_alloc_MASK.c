#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ehci_qh_hw {int dummy; } ;
struct ehci_qh {int refcount; int /*<<< orphan*/  qh_dma; struct ehci_qh_hw* hw; int /*<<< orphan*/ * dummy; int /*<<< orphan*/  qtd_list; struct ehci_hcd* ehci; } ;
struct ehci_hcd {int /*<<< orphan*/  qh_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ehci_qh_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qh*) ; 
 struct ehci_qh* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_qh_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ehci_qh *FUNC8 (struct ehci_hcd *ehci, gfp_t flags)
{
	struct ehci_qh		*qh;
	dma_addr_t		dma;

	qh = FUNC6(sizeof *qh, GFP_ATOMIC);
	if (!qh)
		goto done;
	qh->hw = (struct ehci_qh_hw *)
		FUNC1(ehci->qh_pool, flags, &dma);
	if (!qh->hw)
		goto fail;
	FUNC7(qh->hw, 0, sizeof *qh->hw);
	qh->refcount = 1;
	qh->ehci = ehci;
	qh->qh_dma = dma;
	// INIT_LIST_HEAD (&qh->qh_list);
	FUNC0 (&qh->qtd_list);

	/* dummy td enables safe urb queuing */
	qh->dummy = FUNC4 (ehci, flags);
	if (qh->dummy == NULL) {
		FUNC3 (ehci, "no dummy td\n");
		goto fail1;
	}
done:
	return qh;
fail1:
	FUNC2(ehci->qh_pool, qh->hw, qh->qh_dma);
fail:
	FUNC5(qh);
	return NULL;
}