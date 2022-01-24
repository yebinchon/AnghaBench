#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct TYPE_6__ {int b_hnp_enable; int a_hnp_support; int a_alt_hnp_support; } ;
struct fsl_udc {int max_ep; int ep0_dir; int /*<<< orphan*/  ep0_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  local_setup_buff; TYPE_2__ gadget; TYPE_1__* driver; } ;
struct fsl_ep {int /*<<< orphan*/  ep; } ;
struct TYPE_5__ {scalar_t__ (* setup ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_STATE_RECV ; 
 int /*<<< orphan*/  DATA_STATE_XMIT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EP_DIR_IN ; 
 int const USB_DEVICE_A_ALT_HNP_SUPPORT ; 
 int const USB_DEVICE_A_HNP_SUPPORT ; 
 int const USB_DEVICE_B_HNP_ENABLE ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_RECIP_MASK ; 
#define  USB_REQ_CLEAR_FEATURE 131 
#define  USB_REQ_GET_STATUS 130 
#define  USB_REQ_SET_ADDRESS 129 
#define  USB_REQ_SET_FEATURE 128 
 int USB_TYPE_MASK ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  WAIT_FOR_OUT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_udc*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_udc*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_udc*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct fsl_ep* FUNC6 (struct fsl_udc*,int) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct fsl_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct fsl_udc *udc,
		struct usb_ctrlrequest *setup)
{
	u16 wValue = FUNC8(setup->wValue);
	u16 wIndex = FUNC8(setup->wIndex);
	u16 wLength = FUNC8(setup->wLength);

	FUNC13(udc, 0);

	/* We process some stardard setup requests here */
	switch (setup->bRequest) {
	case USB_REQ_GET_STATUS:
		/* Data+Status phase from udc */
		if ((setup->bRequestType & (USB_DIR_IN | USB_TYPE_MASK))
					!= (USB_DIR_IN | USB_TYPE_STANDARD))
			break;
		FUNC0(udc, setup->bRequestType, wValue, wIndex, wLength);
		return;

	case USB_REQ_SET_ADDRESS:
		/* Status phase from udc */
		if (setup->bRequestType != (USB_DIR_OUT | USB_TYPE_STANDARD
						| USB_RECIP_DEVICE))
			break;
		FUNC1(udc, wValue, wIndex, wLength);
		return;

	case USB_REQ_CLEAR_FEATURE:
	case USB_REQ_SET_FEATURE:
		/* Status phase from udc */
	{
		int rc = -EOPNOTSUPP;

		if ((setup->bRequestType & (USB_RECIP_MASK | USB_TYPE_MASK))
				== (USB_RECIP_ENDPOINT | USB_TYPE_STANDARD)) {
			int pipe = FUNC7(wIndex);
			struct fsl_ep *ep;

			if (wValue != 0 || wLength != 0 || pipe > udc->max_ep)
				break;
			ep = FUNC6(udc, pipe);

			FUNC10(&udc->lock);
			rc = FUNC4(&ep->ep,
					(setup->bRequest == USB_REQ_SET_FEATURE)
						? 1 : 0);
			FUNC9(&udc->lock);

		} else if ((setup->bRequestType & (USB_RECIP_MASK
				| USB_TYPE_MASK)) == (USB_RECIP_DEVICE
				| USB_TYPE_STANDARD)) {
			/* Note: The driver has not include OTG support yet.
			 * This will be set when OTG support is added */
			if (!FUNC5(&udc->gadget))
				break;
			else if (setup->bRequest == USB_DEVICE_B_HNP_ENABLE)
				udc->gadget.b_hnp_enable = 1;
			else if (setup->bRequest == USB_DEVICE_A_HNP_SUPPORT)
				udc->gadget.a_hnp_support = 1;
			else if (setup->bRequest ==
					USB_DEVICE_A_ALT_HNP_SUPPORT)
				udc->gadget.a_alt_hnp_support = 1;
			else
				break;
			rc = 0;
		} else
			break;

		if (rc == 0) {
			if (FUNC2(udc, EP_DIR_IN))
				FUNC3(udc);
		}
		return;
	}

	default:
		break;
	}

	/* Requests handled by gadget */
	if (wLength) {
		/* Data phase from gadget, status phase from udc */
		udc->ep0_dir = (setup->bRequestType & USB_DIR_IN)
				?  USB_DIR_IN : USB_DIR_OUT;
		FUNC10(&udc->lock);
		if (udc->driver->setup(&udc->gadget,
				&udc->local_setup_buff) < 0)
			FUNC3(udc);
		FUNC9(&udc->lock);
		udc->ep0_state = (setup->bRequestType & USB_DIR_IN)
				?  DATA_STATE_XMIT : DATA_STATE_RECV;
	} else {
		/* No data phase, IN status from gadget */
		udc->ep0_dir = USB_DIR_IN;
		FUNC10(&udc->lock);
		if (udc->driver->setup(&udc->gadget,
				&udc->local_setup_buff) < 0)
			FUNC3(udc);
		FUNC9(&udc->lock);
		udc->ep0_state = WAIT_FOR_OUT_STATUS;
	}
}