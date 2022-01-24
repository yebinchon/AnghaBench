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
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {struct ed* hcpriv; TYPE_1__ desc; } ;
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct ohci_hcd {int zf_delay; int /*<<< orphan*/  lock; struct ed* ed_to_check; int /*<<< orphan*/  eds_scheduled; } ;
struct ed {int state; scalar_t__ type; int /*<<< orphan*/  dummy; int /*<<< orphan*/  td_list; } ;

/* Variables and functions */
#define  ED_IDLE 129 
#define  ED_UNLINK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PIPE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,struct ed*) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*,int /*<<< orphan*/ ) ; 
 struct ohci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ohci_hcd*,char*,struct ed*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ohci_hcd*,char*) ; 
 scalar_t__ FUNC7 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct ohci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
	struct ohci_hcd		*ohci = FUNC3 (hcd);
	unsigned long		flags;
	struct ed		*ed = ep->hcpriv;
	unsigned		limit = 1000;

	/* ASSERT:  any requests/urbs are being unlinked */
	/* ASSERT:  nobody can be submitting urbs for this any more */

	if (!ed)
		return;

rescan:
	FUNC9 (&ohci->lock, flags);

	if (!FUNC0 (hcd->state)) {
sanitize:
		ed->state = ED_IDLE;
		if (FUNC7(ohci) && ed->type == PIPE_INTERRUPT)
			ohci->eds_scheduled--;
		FUNC2 (ohci, 0);
	}

	switch (ed->state) {
	case ED_UNLINK:		/* wait for hw to finish? */
		/* major IRQ delivery trouble loses INTR_SF too... */
		if (limit-- == 0) {
			FUNC6(ohci, "ED unlink timeout\n");
			if (FUNC7(ohci)) {
				FUNC6(ohci, "Attempting ZF TD recovery\n");
				ohci->ed_to_check = ed;
				ohci->zf_delay = 2;
			}
			goto sanitize;
		}
		FUNC10 (&ohci->lock, flags);
		FUNC8(1);
		goto rescan;
	case ED_IDLE:		/* fully unlinked */
		if (FUNC4 (&ed->td_list)) {
			FUNC11 (ohci, ed->dummy);
			FUNC1 (ohci, ed);
			break;
		}
		/* else FALL THROUGH */
	default:
		/* caller was supposed to have unlinked any requests;
		 * that's not our job.  can't recover; must leak ed.
		 */
		FUNC5 (ohci, "leak ed %p (#%02x) state %d%s\n",
			ed, ep->desc.bEndpointAddress, ed->state,
			FUNC4 (&ed->td_list) ? "" : " (has tds)");
		FUNC11 (ohci, ed->dummy);
		break;
	}
	ep->hcpriv = NULL;
	FUNC10 (&ohci->lock, flags);
	return;
}