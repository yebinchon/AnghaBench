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
struct xhci_virt_ep {int /*<<< orphan*/  stopped_stream; int /*<<< orphan*/  stopped_td; } ;
struct xhci_hcd {int quirks; TYPE_1__** devs; } ;
struct xhci_dequeue_state {int dummy; } ;
struct usb_device {size_t slot_id; } ;
struct TYPE_2__ {struct xhci_virt_ep* eps; } ;

/* Variables and functions */
 int XHCI_RESET_EP_QUIRK ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,size_t,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xhci_dequeue_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,size_t,unsigned int,int /*<<< orphan*/ ,struct xhci_dequeue_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,size_t,unsigned int,struct xhci_dequeue_state*) ; 

void FUNC4(struct xhci_hcd *xhci,
		struct usb_device *udev, unsigned int ep_index)
{
	struct xhci_dequeue_state deq_state;
	struct xhci_virt_ep *ep;

	FUNC0(xhci, "Cleaning up stalled endpoint ring\n");
	ep = &xhci->devs[udev->slot_id]->eps[ep_index];
	/* We need to move the HW's dequeue pointer past this TD,
	 * or it will attempt to resend it on the next doorbell ring.
	 */
	FUNC1(xhci, udev->slot_id,
			ep_index, ep->stopped_stream, ep->stopped_td,
			&deq_state);

	/* HW with the reset endpoint quirk will use the saved dequeue state to
	 * issue a configure endpoint command later.
	 */
	if (!(xhci->quirks & XHCI_RESET_EP_QUIRK)) {
		FUNC0(xhci, "Queueing new dequeue state\n");
		FUNC2(xhci, udev->slot_id,
				ep_index, ep->stopped_stream, &deq_state);
	} else {
		/* Better hope no one uses the input context between now and the
		 * reset endpoint completion!
		 * XXX: No idea how this hardware will react when stream rings
		 * are enabled.
		 */
		FUNC0(xhci, "Setting up input context for "
				"configure endpoint command\n");
		FUNC3(xhci, udev->slot_id,
				ep_index, &deq_state);
	}
}