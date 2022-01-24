#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct usb_endpoint_descriptor {int bmAttributes; int bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_3__ {int /*<<< orphan*/  speed; } ;
struct qe_udc {int ep0_dir; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  ep0_state; TYPE_1__ gadget; struct qe_ep* eps; } ;
struct TYPE_4__ {int maxpacket; int /*<<< orphan*/  name; } ;
struct qe_ep {scalar_t__ tm; int init; int dir; TYPE_2__ ep; int /*<<< orphan*/  rxframe; int /*<<< orphan*/  rxbuffer; int /*<<< orphan*/ * txframe; scalar_t__ stopped; struct usb_endpoint_descriptor const* desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ USBP_TM_CTL ; 
 int USB_DIR_BOTH ; 
#define  USB_DIR_IN 136 
#define  USB_DIR_OUT 135 
 int USB_ENDPOINT_DIR_MASK ; 
 int USB_ENDPOINT_XFERTYPE_MASK ; 
#define  USB_ENDPOINT_XFER_BULK 134 
#define  USB_ENDPOINT_XFER_CONTROL 133 
#define  USB_ENDPOINT_XFER_INT 132 
#define  USB_ENDPOINT_XFER_ISOC 131 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qe_udc*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct qe_udc*,unsigned char) ; 
 int FUNC6 (struct qe_ep*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct qe_udc *udc,
		      unsigned char pipe_num,
		      const struct usb_endpoint_descriptor *desc)
{
	struct qe_ep *ep = &udc->eps[pipe_num];
	unsigned long flags;
	int reval = 0;
	u16 max = 0;

	max = FUNC3(desc->wMaxPacketSize);

	/* check the max package size validate for this endpoint */
	/* Refer to USB2.0 spec table 9-13,
	*/
	if (pipe_num != 0) {
		switch (desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) {
		case USB_ENDPOINT_XFER_BULK:
			if (FUNC10(ep->ep.name, "-iso")
					|| FUNC10(ep->ep.name, "-int"))
				goto en_done;
			switch (udc->gadget.speed) {
			case USB_SPEED_HIGH:
			if ((max == 128) || (max == 256) || (max == 512))
				break;
			default:
				switch (max) {
				case 4:
				case 8:
				case 16:
				case 32:
				case 64:
					break;
				default:
				case USB_SPEED_LOW:
					goto en_done;
				}
			}
			break;
		case USB_ENDPOINT_XFER_INT:
			if (FUNC10(ep->ep.name, "-iso"))	/* bulk is ok */
				goto en_done;
			switch (udc->gadget.speed) {
			case USB_SPEED_HIGH:
				if (max <= 1024)
					break;
			case USB_SPEED_FULL:
				if (max <= 64)
					break;
			default:
				if (max <= 8)
					break;
				goto en_done;
			}
			break;
		case USB_ENDPOINT_XFER_ISOC:
			if (FUNC10(ep->ep.name, "-bulk")
				|| FUNC10(ep->ep.name, "-int"))
				goto en_done;
			switch (udc->gadget.speed) {
			case USB_SPEED_HIGH:
				if (max <= 1024)
					break;
			case USB_SPEED_FULL:
				if (max <= 1023)
					break;
			default:
				goto en_done;
			}
			break;
		case USB_ENDPOINT_XFER_CONTROL:
			if (FUNC10(ep->ep.name, "-iso")
				|| FUNC10(ep->ep.name, "-int"))
				goto en_done;
			switch (udc->gadget.speed) {
			case USB_SPEED_HIGH:
			case USB_SPEED_FULL:
				switch (max) {
				case 1:
				case 2:
				case 4:
				case 8:
				case 16:
				case 32:
				case 64:
					break;
				default:
					goto en_done;
				}
			case USB_SPEED_LOW:
				switch (max) {
				case 1:
				case 2:
				case 4:
				case 8:
					break;
				default:
					goto en_done;
				}
			default:
				goto en_done;
			}
			break;

		default:
			goto en_done;
		}
	} /* if ep0*/

	FUNC8(&udc->lock, flags);

	/* initialize ep structure */
	ep->ep.maxpacket = max;
	ep->tm = (u8)(desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK);
	ep->desc = desc;
	ep->stopped = 0;
	ep->init = 1;

	if (pipe_num == 0) {
		ep->dir = USB_DIR_BOTH;
		udc->ep0_dir = USB_DIR_OUT;
		udc->ep0_state = WAIT_FOR_SETUP;
	} else	{
		switch (desc->bEndpointAddress & USB_ENDPOINT_DIR_MASK) {
		case USB_DIR_OUT:
			ep->dir = USB_DIR_OUT;
			break;
		case USB_DIR_IN:
			ep->dir = USB_DIR_IN;
		default:
			break;
		}
	}

	/* hardware special operation */
	FUNC4(udc, pipe_num);
	if ((ep->tm == USBP_TM_CTL) || (ep->dir == USB_DIR_OUT)) {
		reval = FUNC6(ep);
		if (reval)
			goto en_done1;
	}

	if ((ep->tm == USBP_TM_CTL) || (ep->dir == USB_DIR_IN)) {
		ep->txframe = FUNC2(sizeof(*ep->txframe), GFP_ATOMIC);
		if (ep->txframe == NULL) {
			FUNC0(udc->dev, "malloc txframe failed\n");
			goto en_done2;
		}
		FUNC7(ep->txframe);
	}

	FUNC5(udc, pipe_num);

	/* Now HW will be NAKing transfers to that EP,
	 * until a buffer is queued to it. */
	FUNC9(&udc->lock, flags);

	return 0;
en_done2:
	FUNC1(ep->rxbuffer);
	FUNC1(ep->rxframe);
en_done1:
	FUNC9(&udc->lock, flags);
en_done:
	FUNC0(udc->dev, "failed to initialize %s\n", ep->ep.name);
	return -ENODEV;
}