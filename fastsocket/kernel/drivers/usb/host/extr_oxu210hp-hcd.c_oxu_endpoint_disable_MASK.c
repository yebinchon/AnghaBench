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
struct oxu_hcd {int /*<<< orphan*/  lock; TYPE_2__* async; } ;
struct TYPE_7__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ hw_info1; int qh_state; int /*<<< orphan*/  qtd_list; TYPE_3__ qh_next; } ;
struct TYPE_5__ {struct ehci_qh* qh; } ;
struct TYPE_6__ {TYPE_1__ qh_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  QH_STATE_IDLE 130 
#define  QH_STATE_LINKED 129 
#define  QH_STATE_UNLINK 128 
 struct oxu_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*,char*,struct ehci_qh*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct oxu_hcd*,struct ehci_qh*) ; 

__attribute__((used)) static void FUNC10(struct usb_hcd *hcd,
					struct usb_host_endpoint *ep)
{
	struct oxu_hcd *oxu = FUNC1(hcd);
	unsigned long		flags;
	struct ehci_qh		*qh, *tmp;

	/* ASSERT:  any requests/urbs are being unlinked */
	/* ASSERT:  nobody can be submitting urbs for this any more */

rescan:
	FUNC7(&oxu->lock, flags);
	qh = ep->hcpriv;
	if (!qh)
		goto done;

	/* endpoints can be iso streams.  for now, we don't
	 * accelerate iso completions ... so spin a while.
	 */
	if (qh->hw_info1 == 0) {
		FUNC4(oxu, "iso delay\n");
		goto idle_timeout;
	}

	if (!FUNC0(hcd->state))
		qh->qh_state = QH_STATE_IDLE;
	switch (qh->qh_state) {
	case QH_STATE_LINKED:
		for (tmp = oxu->async->qh_next.qh;
				tmp && tmp != qh;
				tmp = tmp->qh_next.qh)
			continue;
		/* periodic qh self-unlinks on empty */
		if (!tmp)
			goto nogood;
		FUNC9(oxu, qh);
		/* FALL THROUGH */
	case QH_STATE_UNLINK:		/* wait for hw to finish? */
idle_timeout:
		FUNC8(&oxu->lock, flags);
		FUNC6(1);
		goto rescan;
	case QH_STATE_IDLE:		/* fully unlinked */
		if (FUNC2(&qh->qtd_list)) {
			FUNC5(qh);
			break;
		}
		/* else FALL THROUGH */
	default:
nogood:
		/* caller was supposed to have unlinked any requests;
		 * that's not our job.  just leak this memory.
		 */
		FUNC3(oxu, "qh %p (#%02x) state %d%s\n",
			qh, ep->desc.bEndpointAddress, qh->qh_state,
			FUNC2(&qh->qtd_list) ? "" : "(has tds)");
		break;
	}
	ep->hcpriv = NULL;
done:
	FUNC8(&oxu->lock, flags);
	return;
}