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
struct xhci_virt_device {TYPE_1__* eps; int /*<<< orphan*/  in_ctx; } ;
struct xhci_ring {int cycle_state; int /*<<< orphan*/  enqueue; int /*<<< orphan*/  enq_seg; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int /*<<< orphan*/  deq; } ;
struct usb_device {size_t slot_id; } ;
struct TYPE_2__ {struct xhci_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct xhci_ep_ctx* FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct xhci_hcd *xhci,
		struct usb_device *udev)
{
	struct xhci_virt_device *virt_dev;
	struct xhci_ep_ctx	*ep0_ctx;
	struct xhci_ring	*ep_ring;

	virt_dev = xhci->devs[udev->slot_id];
	ep0_ctx = FUNC1(xhci, virt_dev->in_ctx, 0);
	ep_ring = virt_dev->eps[0].ring;
	/*
	 * FIXME we don't keep track of the dequeue pointer very well after a
	 * Set TR dequeue pointer, so we're setting the dequeue pointer of the
	 * host to our enqueue pointer.  This should only be called after a
	 * configured device has reset, so all control transfers should have
	 * been completed or cancelled before the reset.
	 */
	ep0_ctx->deq = FUNC0(FUNC2(ep_ring->enq_seg,
							ep_ring->enqueue)
				   | ep_ring->cycle_state);
}