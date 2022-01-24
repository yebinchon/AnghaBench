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
struct usb_host_endpoint {struct ehci_qh* hcpriv; } ;
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct ehci_qh {scalar_t__ qh_state; int /*<<< orphan*/  qtd_list; scalar_t__ clearing_tt; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QH_STATE_IDLE ; 
 struct ehci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct usb_hcd *hcd,
		struct usb_host_endpoint *ep)
{
	struct ehci_hcd		*ehci = FUNC1(hcd);
	struct ehci_qh		*qh = ep->hcpriv;
	unsigned long		flags;

	FUNC4(&ehci->lock, flags);
	qh->clearing_tt = 0;
	if (qh->qh_state == QH_STATE_IDLE && !FUNC2(&qh->qtd_list)
			&& FUNC0(hcd->state))
		FUNC3(ehci, qh);
	FUNC5(&ehci->lock, flags);
}