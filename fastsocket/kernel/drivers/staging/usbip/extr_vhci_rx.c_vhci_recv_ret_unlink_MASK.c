#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vhci_unlink {int /*<<< orphan*/  unlink_seqnum; } ;
struct vhci_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
struct TYPE_8__ {TYPE_2__ ret_unlink; } ;
struct TYPE_6__ {int /*<<< orphan*/  seqnum; } ;
struct usbip_header {TYPE_3__ u; TYPE_1__ base; } ;
struct urb {int /*<<< orphan*/  status; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct vhci_unlink* FUNC0 (struct vhci_device*,struct usbip_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct vhci_unlink*) ; 
 struct urb* FUNC2 (struct vhci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* the_controller ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbip_header*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC11(struct vhci_device *vdev,
						struct usbip_header *pdu)
{
	struct vhci_unlink *unlink;
	struct urb *urb;

	FUNC8(pdu);

	unlink = FUNC0(vdev, pdu);
	if (!unlink) {
		FUNC9("cannot find the pending unlink %u\n",
							pdu->base.seqnum);
		return;
	}

	urb = FUNC2(vdev, unlink->unlink_seqnum);
	if (!urb) {
		/*
		 * I get the result of a unlink request. But, it seems that I
		 * already received the result of its submit result and gave
		 * back the URB.
		 */
		FUNC9("the urb (seqnum %d) was already given backed\n",
							pdu->base.seqnum);
	} else {
		FUNC7("now giveback urb %p\n", urb);

		/* If unlink is succeed, status is -ECONNRESET */
		urb->status = pdu->u.ret_unlink.status;
		FUNC9("%d\n", urb->status);

		FUNC3(&the_controller->lock);
		FUNC6(FUNC10(the_controller), urb);
		FUNC4(&the_controller->lock);

		FUNC5(FUNC10(the_controller), urb,
								urb->status);
	}

	FUNC1(unlink);

	return;
}