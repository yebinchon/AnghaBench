#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xhci_virt_ep {scalar_t__ stopped_stream; int /*<<< orphan*/ * stopped_trb; int /*<<< orphan*/ * stopped_td; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; TYPE_1__** devs; } ;
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; scalar_t__ hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {size_t slot_id; } ;
struct TYPE_4__ {struct xhci_virt_ep* eps; } ;

/* Variables and functions */
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,struct usb_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*,...) ; 
 unsigned int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct xhci_hcd*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,char*) ; 

void FUNC11(struct usb_hcd *hcd,
		struct usb_host_endpoint *ep)
{
	struct xhci_hcd *xhci;
	struct usb_device *udev;
	unsigned int ep_index;
	unsigned long flags;
	int ret;
	struct xhci_virt_ep *virt_ep;

	xhci = FUNC0(hcd);
	udev = (struct usb_device *) ep->hcpriv;
	/* Called with a root hub endpoint (or an endpoint that wasn't added
	 * with xhci_add_endpoint()
	 */
	if (!ep->hcpriv)
		return;
	ep_index = FUNC7(&ep->desc);
	virt_ep = &xhci->devs[udev->slot_id]->eps[ep_index];
	if (!virt_ep->stopped_td) {
		FUNC6(xhci, "Endpoint 0x%x not halted, refusing to reset.\n",
				ep->desc.bEndpointAddress);
		return;
	}
	if (FUNC4(&ep->desc)) {
		FUNC6(xhci, "Control endpoint stall already handled.\n");
		return;
	}

	FUNC6(xhci, "Queueing reset endpoint command\n");
	FUNC2(&xhci->lock, flags);
	ret = FUNC8(xhci, udev->slot_id, ep_index);
	/*
	 * Can't change the ring dequeue pointer until it's transitioned to the
	 * stopped state, which is only upon a successful reset endpoint
	 * command.  Better hope that last command worked!
	 */
	if (!ret) {
		FUNC5(xhci, udev, ep_index);
		FUNC1(virt_ep->stopped_td);
		FUNC9(xhci);
	}
	virt_ep->stopped_td = NULL;
	virt_ep->stopped_trb = NULL;
	virt_ep->stopped_stream = 0;
	FUNC3(&xhci->lock, flags);

	if (ret)
		FUNC10(xhci, "FIXME allocate a new ring segment\n");
}