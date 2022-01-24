#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;
struct vhci_device {TYPE_2__* udev; TYPE_1__ ud; int /*<<< orphan*/  rhport; } ;
struct usb_hcd {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int wValue; } ;
struct urb {int status; TYPE_2__* dev; scalar_t__ setup_packet; int /*<<< orphan*/  pipe; scalar_t__ transfer_buffer_length; int /*<<< orphan*/  transfer_buffer; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ __u8 ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_port; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 scalar_t__ PIPE_CONTROL ; 
 int USB_DT_DEVICE ; 
#define  USB_REQ_GET_DESCRIPTOR 129 
#define  USB_REQ_SET_ADDRESS 128 
 int /*<<< orphan*/  VDEV_ST_USED ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 struct vhci_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_3__* the_controller ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct urb*,int) ; 
 int FUNC9 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*,struct urb*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct urb*) ; 

__attribute__((used)) static int FUNC16(struct usb_hcd *hcd, struct urb *urb,
			    gfp_t mem_flags)
{
	struct device *dev = &urb->dev->dev;
	int ret = 0;
	unsigned long flags;

	FUNC13("enter, usb_hcd %p urb %p mem_flags %d\n",
		    hcd, urb, mem_flags);

	/* patch to usb_sg_init() is in 2.5.60 */
	FUNC0(!urb->transfer_buffer && urb->transfer_buffer_length);

	FUNC5(&the_controller->lock, flags);

	if (urb->status != -EINPROGRESS) {
		FUNC1(dev, "URB already unlinked!, status %d\n", urb->status);
		FUNC7(&the_controller->lock, flags);
		return urb->status;
	}

	ret = FUNC9(hcd, urb);
	if (ret)
		goto no_need_unlink;

	/*
	 * The enumeration process is as follows;
	 *
	 *  1. Get_Descriptor request to DevAddrs(0) EndPoint(0)
	 *     to get max packet length of default pipe
	 *
	 *  2. Set_Address request to DevAddr(0) EndPoint(0)
	 *
	 */

	if (FUNC11(urb->pipe) == 0) {
		__u8 type = FUNC12(urb->pipe);
		struct usb_ctrlrequest *ctrlreq =
				(struct usb_ctrlrequest *) urb->setup_packet;
		struct vhci_device *vdev =
				FUNC3(the_controller->pending_port);

		if (type != PIPE_CONTROL || !ctrlreq) {
			FUNC1(dev, "invalid request to devnum 0\n");
			ret = -EINVAL;
			goto no_need_xmit;
		}

		switch (ctrlreq->bRequest) {
		case USB_REQ_SET_ADDRESS:
			/* set_address may come when a device is reset */
			FUNC2(dev, "SetAddress Request (%d) to port %d\n",
				 ctrlreq->wValue, vdev->rhport);

			vdev->udev = urb->dev;

			FUNC4(&vdev->ud.lock);
			vdev->ud.status = VDEV_ST_USED;
			FUNC6(&vdev->ud.lock);

			if (urb->status == -EINPROGRESS) {
				/* This request is successfully completed. */
				/* If not -EINPROGRESS, possibly unlinked. */
				urb->status = 0;
			}

			goto no_need_xmit;

		case USB_REQ_GET_DESCRIPTOR:
			if (ctrlreq->wValue == (USB_DT_DEVICE << 8))
				FUNC13("Not yet?: "
						"Get_Descriptor to device 0 "
						"(get max pipe size)\n");

			/* FIXME: reference count? (usb_get_dev()) */
			vdev->udev = urb->dev;
			goto out;

		default:
			/* NOT REACHED */
			FUNC1(dev, "invalid request to devnum 0 bRequest %u, "
				"wValue %u\n", ctrlreq->bRequest,
				ctrlreq->wValue);
			ret =  -EINVAL;
			goto no_need_xmit;
		}

	}

out:
	FUNC15(urb);

	FUNC7(&the_controller->lock, flags);

	return 0;

no_need_xmit:
	FUNC10(hcd, urb);
no_need_unlink:
	FUNC7(&the_controller->lock, flags);

	FUNC8(FUNC14(the_controller), urb, urb->status);

	return ret;
}