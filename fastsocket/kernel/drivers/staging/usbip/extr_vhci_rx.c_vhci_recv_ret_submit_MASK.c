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
struct usbip_device {int dummy; } ;
struct vhci_device {struct usbip_device ud; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqnum; } ;
struct usbip_header {TYPE_1__ base; } ;
struct urb {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  seqnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBIP_RET_SUBMIT ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC1 (struct vhci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* the_controller ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct urb*) ; 
 scalar_t__ usbip_dbg_flag_vhci_rx ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbip_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usbip_header*,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct usbip_device*,struct urb*) ; 
 scalar_t__ FUNC11 (struct usbip_device*,struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC15(struct vhci_device *vdev,
						struct usbip_header *pdu)
{
	struct usbip_device *ud = &vdev->ud;
	struct urb *urb;


	urb = FUNC1(vdev, pdu->base.seqnum);


	if (!urb) {
		FUNC12("cannot find a urb of seqnum %u\n",
							pdu->base.seqnum);
		FUNC13("max seqnum %d\n",
					FUNC0(&the_controller->seqnum));
		FUNC8(ud, VDEV_EVENT_ERROR_TCP);
		return;
	}


	/* unpack the pdu to a urb */
	FUNC9(pdu, urb, USBIP_RET_SUBMIT, 0);


	/* recv transfer buffer */
	if (FUNC11(ud, urb) < 0)
		return;


	/* recv iso_packet_descriptor */
	if (FUNC10(ud, urb) < 0)
		return;


	if (usbip_dbg_flag_vhci_rx)
		FUNC7(urb);


	FUNC6("now giveback urb %p\n", urb);

	FUNC2(&the_controller->lock);
	FUNC5(FUNC14(the_controller), urb);
	FUNC3(&the_controller->lock);

	FUNC4(FUNC14(the_controller), urb, urb->status);


	FUNC6("Leave\n");

	return;
}