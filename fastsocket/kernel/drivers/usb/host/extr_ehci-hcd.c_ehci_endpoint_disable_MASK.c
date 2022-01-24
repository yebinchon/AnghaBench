#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {struct ehci_qh* hcpriv; TYPE_4__ desc; } ;
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct TYPE_7__ {struct ehci_qh* qh; } ;
struct ehci_qh {int qh_state; int /*<<< orphan*/  qtd_list; int /*<<< orphan*/  clearing_tt; TYPE_3__ qh_next; int /*<<< orphan*/ * hw; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; TYPE_2__* async; } ;
struct TYPE_5__ {struct ehci_qh* qh; } ;
struct TYPE_6__ {TYPE_1__ qh_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  QH_STATE_COMPLETING 132 
#define  QH_STATE_IDLE 131 
#define  QH_STATE_LINKED 130 
#define  QH_STATE_UNLINK 129 
#define  QH_STATE_UNLINK_WAIT 128 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,char*,struct ehci_qh*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,char*) ; 
 struct ehci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*,struct ehci_qh*) ; 

__attribute__((used)) static void
FUNC10 (struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
	struct ehci_hcd		*ehci = FUNC3 (hcd);
	unsigned long		flags;
	struct ehci_qh		*qh, *tmp;

	/* ASSERT:  any requests/urbs are being unlinked */
	/* ASSERT:  nobody can be submitting urbs for this any more */

rescan:
	FUNC7 (&ehci->lock, flags);
	qh = ep->hcpriv;
	if (!qh)
		goto done;

	/* endpoints can be iso streams.  for now, we don't
	 * accelerate iso completions ... so spin a while.
	 */
	if (qh->hw == NULL) {
		FUNC2 (ehci, "iso delay\n");
		goto idle_timeout;
	}

	if (!FUNC0 (hcd->state))
		qh->qh_state = QH_STATE_IDLE;
	switch (qh->qh_state) {
	case QH_STATE_LINKED:
	case QH_STATE_COMPLETING:
		for (tmp = ehci->async->qh_next.qh;
				tmp && tmp != qh;
				tmp = tmp->qh_next.qh)
			continue;
		/* periodic qh self-unlinks on empty, and a COMPLETING qh
		 * may already be unlinked.
		 */
		if (tmp)
			FUNC9(ehci, qh);
		/* FALL THROUGH */
	case QH_STATE_UNLINK:		/* wait for hw to finish? */
	case QH_STATE_UNLINK_WAIT:
idle_timeout:
		FUNC8 (&ehci->lock, flags);
		FUNC6(1);
		goto rescan;
	case QH_STATE_IDLE:		/* fully unlinked */
		if (qh->clearing_tt)
			goto idle_timeout;
		if (FUNC4 (&qh->qtd_list)) {
			FUNC5 (qh);
			break;
		}
		/* else FALL THROUGH */
	default:
		/* caller was supposed to have unlinked any requests;
		 * that's not our job.  just leak this memory.
		 */
		FUNC1 (ehci, "qh %p (#%02x) state %d%s\n",
			qh, ep->desc.bEndpointAddress, qh->qh_state,
			FUNC4 (&qh->qtd_list) ? "" : "(has tds)");
		break;
	}
	ep->hcpriv = NULL;
done:
	FUNC8 (&ehci->lock, flags);
	return;
}