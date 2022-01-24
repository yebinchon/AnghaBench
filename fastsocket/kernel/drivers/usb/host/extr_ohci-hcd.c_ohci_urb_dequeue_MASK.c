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
struct TYPE_3__ {TYPE_2__* ed; } ;
typedef  TYPE_1__ urb_priv_t ;
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct urb {TYPE_1__* hcpriv; } ;
struct ohci_hcd {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ ED_OPER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,struct urb*,int) ; 
 struct ohci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ohci_hcd*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,char*,int,int) ; 
 int FUNC7 (struct usb_hcd*,struct urb*,int) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct ohci_hcd		*ohci = FUNC2 (hcd);
	unsigned long		flags;
	int			rc;

#ifdef OHCI_VERBOSE_DEBUG
	urb_print(urb, "UNLINK", 1, status);
#endif

	FUNC3 (&ohci->lock, flags);
	rc = FUNC7(hcd, urb, status);
	if (rc) {
		;	/* Do nothing */
	} else if (FUNC0(hcd->state)) {
		urb_priv_t  *urb_priv;

		/* Unless an IRQ completed the unlink while it was being
		 * handed to us, flag it for unlink and giveback, and force
		 * some upcoming INTR_SF to call finish_unlinks()
		 */
		urb_priv = urb->hcpriv;
		if (urb_priv) {
			if (urb_priv->ed->state == ED_OPER)
				FUNC5 (ohci, urb_priv->ed);
		}
	} else {
		/*
		 * with HC dead, we won't respect hc queue pointers
		 * any more ... just clean up every urb's memory.
		 */
		if (urb->hcpriv)
			FUNC1(ohci, urb, status);
	}
	FUNC4 (&ohci->lock, flags);
	return rc;
}