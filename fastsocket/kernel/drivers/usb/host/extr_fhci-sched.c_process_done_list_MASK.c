#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb_priv {scalar_t__ tds_cnt; scalar_t__ num_of_tds; scalar_t__ state; } ;
struct urb {struct urb_priv* hcpriv; } ;
struct td {struct ed* ed; struct urb* urb; } ;
struct fhci_hcd {TYPE_1__* timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  hc_list; } ;
struct ed {scalar_t__ state; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ FHCI_ED_HALTED ; 
 void* FHCI_ED_OPER ; 
 scalar_t__ FHCI_ED_SKIP ; 
 scalar_t__ FHCI_ED_URB_DEL ; 
 scalar_t__ URB_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_hcd*,struct ed*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,struct td*) ; 
 struct td* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct fhci_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	struct urb *urb;
	struct ed *ed;
	struct td *td;
	struct urb_priv *urb_priv;
	struct fhci_hcd *fhci = (struct fhci_hcd *)data;

	FUNC0(fhci->timer->irq);
	FUNC0(FUNC5(fhci)->irq);
	FUNC7(&fhci->lock);

	td = FUNC4(fhci->hc_list);
	while (td != NULL) {
		urb = td->urb;
		urb_priv = urb->hcpriv;
		ed = td->ed;

		/* update URB's length and status from TD */
		FUNC3(urb, td);
		urb_priv->tds_cnt++;

		/*
		 * if all this urb's TDs are done, call complete()
		 * Interrupt transfers are the onley special case:
		 * they are reissued,until "deleted" by usb_unlink_urb
		 * (real work done in a SOF intr, by process_del_list)
		 */
		if (urb_priv->tds_cnt == urb_priv->num_of_tds) {
			FUNC6(fhci, urb);
		} else if (urb_priv->state == URB_DEL &&
				ed->state == FHCI_ED_SKIP) {
			FUNC2(fhci, ed);
			ed->state = FHCI_ED_OPER;
		} else if (ed->state == FHCI_ED_HALTED) {
			urb_priv->state = URB_DEL;
			ed->state = FHCI_ED_URB_DEL;
			FUNC2(fhci, ed);
			ed->state = FHCI_ED_OPER;
		}

		td = FUNC4(fhci->hc_list);
	}

	FUNC8(&fhci->lock);
	FUNC1(fhci->timer->irq);
	FUNC1(FUNC5(fhci)->irq);
}