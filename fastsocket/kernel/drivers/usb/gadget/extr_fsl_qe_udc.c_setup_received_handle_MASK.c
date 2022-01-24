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
typedef  scalar_t__ u16 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct qe_udc {int ep0_dir; int /*<<< orphan*/  ep0_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  local_setup_buff; int /*<<< orphan*/  gadget; TYPE_1__* driver; struct qe_ep* eps; } ;
struct qe_ep {int /*<<< orphan*/  ep; } ;
struct TYPE_2__ {scalar_t__ (* setup ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_STATE_NEED_ZLP ; 
 int /*<<< orphan*/  DATA_STATE_RECV ; 
 int /*<<< orphan*/  DATA_STATE_XMIT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 scalar_t__ USB_ENDPOINT_NUMBER_MASK ; 
 int USB_MAX_ENDPOINTS ; 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_RECIP_MASK ; 
#define  USB_REQ_CLEAR_FEATURE 131 
#define  USB_REQ_GET_STATUS 130 
#define  USB_REQ_SET_ADDRESS 129 
#define  USB_REQ_SET_FEATURE 128 
 int USB_TYPE_MASK ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (struct qe_udc*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qe_udc*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qe_udc*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qe_udc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct qe_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct qe_udc *udc,
				struct usb_ctrlrequest *setup)
{
	/* Fix Endian (udc->local_setup_buff is cpu Endian now)*/
	u16 wValue = FUNC3(setup->wValue);
	u16 wIndex = FUNC3(setup->wIndex);
	u16 wLength = FUNC3(setup->wLength);

	/* clear the previous request in the ep0 */
	FUNC10(udc, 0);

	if (setup->bRequestType & USB_DIR_IN)
		udc->ep0_dir = USB_DIR_IN;
	else
		udc->ep0_dir = USB_DIR_OUT;

	switch (setup->bRequest) {
	case USB_REQ_GET_STATUS:
		/* Data+Status phase form udc */
		if ((setup->bRequestType & (USB_DIR_IN | USB_TYPE_MASK))
					!= (USB_DIR_IN | USB_TYPE_STANDARD))
			break;
		FUNC0(udc, setup->bRequestType, wValue, wIndex,
					wLength);
		return;

	case USB_REQ_SET_ADDRESS:
		/* Status phase from udc */
		if (setup->bRequestType != (USB_DIR_OUT | USB_TYPE_STANDARD |
						USB_RECIP_DEVICE))
			break;
		FUNC1(udc, wValue, wIndex, wLength);
		return;

	case USB_REQ_CLEAR_FEATURE:
	case USB_REQ_SET_FEATURE:
		/* Requests with no data phase, status phase from udc */
		if ((setup->bRequestType & USB_TYPE_MASK)
					!= USB_TYPE_STANDARD)
			break;

		if ((setup->bRequestType & USB_RECIP_MASK)
				== USB_RECIP_ENDPOINT) {
			int pipe = wIndex & USB_ENDPOINT_NUMBER_MASK;
			struct qe_ep *ep;

			if (wValue != 0 || wLength != 0
				|| pipe > USB_MAX_ENDPOINTS)
				break;
			ep = &udc->eps[pipe];

			FUNC7(&udc->lock);
			FUNC5(&ep->ep,
					(setup->bRequest == USB_REQ_SET_FEATURE)
						? 1 : 0);
			FUNC6(&udc->lock);
		}

		FUNC2(udc, USB_DIR_IN);

		return;

	default:
		break;
	}

	if (wLength) {
		/* Data phase from gadget, status phase from udc */
		if (setup->bRequestType & USB_DIR_IN) {
			udc->ep0_state = DATA_STATE_XMIT;
			udc->ep0_dir = USB_DIR_IN;
		} else {
			udc->ep0_state = DATA_STATE_RECV;
			udc->ep0_dir = USB_DIR_OUT;
		}
		FUNC7(&udc->lock);
		if (udc->driver->setup(&udc->gadget,
					&udc->local_setup_buff) < 0)
			FUNC4(udc);
		FUNC6(&udc->lock);
	} else {
		/* No data phase, IN status from gadget */
		udc->ep0_dir = USB_DIR_IN;
		FUNC7(&udc->lock);
		if (udc->driver->setup(&udc->gadget,
					&udc->local_setup_buff) < 0)
			FUNC4(udc);
		FUNC6(&udc->lock);
		udc->ep0_state = DATA_STATE_NEED_ZLP;
	}
}