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
struct usb_hcd {int dummy; } ;
struct urb {scalar_t__ hcpriv; int /*<<< orphan*/  pipe; } ;
struct ehci_qh {int /*<<< orphan*/  qh_state; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  PIPE_INTERRUPT 134 
#define  PIPE_ISOCHRONOUS 133 
#define  QH_STATE_COMPLETING 132 
#define  QH_STATE_IDLE 131 
#define  QH_STATE_LINKED 130 
#define  QH_STATE_UNLINK 129 
#define  QH_STATE_UNLINK_WAIT 128 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,char*,struct ehci_qh*,int /*<<< orphan*/ ) ; 
 struct ehci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,struct ehci_qh*) ; 
 int FUNC7 (struct usb_hcd*,struct urb*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct ehci_hcd		*ehci = FUNC1 (hcd);
	struct ehci_qh		*qh;
	unsigned long		flags;
	int			rc;

	FUNC4 (&ehci->lock, flags);
	rc = FUNC7(hcd, urb, status);
	if (rc)
		goto done;

	switch (FUNC8 (urb->pipe)) {
	// case PIPE_CONTROL:
	// case PIPE_BULK:
	default:
		qh = (struct ehci_qh *) urb->hcpriv;
		if (!qh)
			break;
		switch (qh->qh_state) {
		case QH_STATE_LINKED:
		case QH_STATE_COMPLETING:
			FUNC6(ehci, qh);
			break;
		case QH_STATE_UNLINK:
		case QH_STATE_UNLINK_WAIT:
			/* already started */
			break;
		case QH_STATE_IDLE:
			/* QH might be waiting for a Clear-TT-Buffer */
			FUNC3(ehci, qh);
			break;
		}
		break;

	case PIPE_INTERRUPT:
		qh = (struct ehci_qh *) urb->hcpriv;
		if (!qh)
			break;
		switch (qh->qh_state) {
		case QH_STATE_LINKED:
		case QH_STATE_COMPLETING:
			FUNC2 (ehci, qh);
			break;
		case QH_STATE_IDLE:
			FUNC3 (ehci, qh);
			break;
		default:
			FUNC0 (ehci, "bogus qh %p state %d\n",
					qh, qh->qh_state);
			goto done;
		}
		break;

	case PIPE_ISOCHRONOUS:
		// itd or sitd ...

		// wait till next completion, do it then.
		// completion irqs can wait up to 1024 msec,
		break;
	}
done:
	FUNC5 (&ehci->lock, flags);
	return rc;
}