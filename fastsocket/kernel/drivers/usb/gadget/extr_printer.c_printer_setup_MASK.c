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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct usb_request {int length; int zero; scalar_t__ status; scalar_t__ buf; int /*<<< orphan*/  (* complete ) (int /*<<< orphan*/ ,struct usb_request*) ;} ;
struct usb_gadget {int /*<<< orphan*/  ep0; int /*<<< orphan*/  a_alt_hnp_support; int /*<<< orphan*/  a_hnp_support; int /*<<< orphan*/  is_otg; int /*<<< orphan*/  speed; int /*<<< orphan*/  is_dualspeed; } ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; } ;
struct printer_dev {int /*<<< orphan*/  printer_status; int /*<<< orphan*/  interface; int /*<<< orphan*/  config; struct usb_request* req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct printer_dev*,char*,...) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PRINTER_INTERFACE ; 
 int USB_DIR_IN ; 
#define  USB_DT_CONFIG 139 
#define  USB_DT_DEVICE 138 
#define  USB_DT_DEVICE_QUALIFIER 137 
#define  USB_DT_OTHER_SPEED_CONFIG 136 
#define  USB_DT_STRING 135 
 int USB_RECIP_INTERFACE ; 
#define  USB_REQ_GET_CONFIGURATION 134 
#define  USB_REQ_GET_DESCRIPTOR 133 
#define  USB_REQ_GET_INTERFACE 132 
#define  USB_REQ_SET_CONFIGURATION 131 
#define  USB_REQ_SET_INTERFACE 130 
#define  USB_TYPE_CLASS 129 
 int USB_TYPE_MASK ; 
#define  USB_TYPE_STANDARD 128 
 int /*<<< orphan*/  FUNC1 (struct printer_dev*,char*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int dev_qualifier ; 
 int device_desc ; 
 struct printer_dev* FUNC3 (struct usb_gadget*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int*,int) ; 
 int FUNC6 (int,int) ; 
 int* pnp_string ; 
 int FUNC7 (struct printer_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct printer_dev*) ; 
 int FUNC10 (struct printer_dev*,int) ; 
 int /*<<< orphan*/  stringtab ; 
 int FUNC11 (int /*<<< orphan*/ ,struct usb_request*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
{
	struct printer_dev	*dev = FUNC3(gadget);
	struct usb_request	*req = dev->req;
	int			value = -EOPNOTSUPP;
	u16			wIndex = FUNC4(ctrl->wIndex);
	u16			wValue = FUNC4(ctrl->wValue);
	u16			wLength = FUNC4(ctrl->wLength);

	FUNC0(dev, "ctrl req%02x.%02x v%04x i%04x l%d\n",
		ctrl->bRequestType, ctrl->bRequest, wValue, wIndex, wLength);

	req->complete = printer_setup_complete;

	switch (ctrl->bRequestType&USB_TYPE_MASK) {

	case USB_TYPE_STANDARD:
		switch (ctrl->bRequest) {

		case USB_REQ_GET_DESCRIPTOR:
			if (ctrl->bRequestType != USB_DIR_IN)
				break;
			switch (wValue >> 8) {

			case USB_DT_DEVICE:
				value = FUNC6(wLength, (u16) sizeof device_desc);
				FUNC5(req->buf, &device_desc, value);
				break;
#ifdef CONFIG_USB_GADGET_DUALSPEED
			case USB_DT_DEVICE_QUALIFIER:
				if (!gadget->is_dualspeed)
					break;
				value = min(wLength,
						(u16) sizeof dev_qualifier);
				memcpy(req->buf, &dev_qualifier, value);
				break;

			case USB_DT_OTHER_SPEED_CONFIG:
				if (!gadget->is_dualspeed)
					break;
				/* FALLTHROUGH */
#endif /* CONFIG_USB_GADGET_DUALSPEED */
			case USB_DT_CONFIG:
				value = FUNC2(gadget->speed, req->buf,
						wValue >> 8,
						wValue & 0xff,
						gadget->is_otg);
				if (value >= 0)
					value = FUNC6(wLength, (u16) value);
				break;

			case USB_DT_STRING:
				value = FUNC12(&stringtab,
						wValue & 0xff, req->buf);
				if (value >= 0)
					value = FUNC6(wLength, (u16) value);
				break;
			}
			break;

		case USB_REQ_SET_CONFIGURATION:
			if (ctrl->bRequestType != 0)
				break;
			if (gadget->a_hnp_support)
				FUNC0(dev, "HNP available\n");
			else if (gadget->a_alt_hnp_support)
				FUNC0(dev, "HNP needs a different root port\n");
			value = FUNC7(dev, wValue);
			break;
		case USB_REQ_GET_CONFIGURATION:
			if (ctrl->bRequestType != USB_DIR_IN)
				break;
			*(u8 *)req->buf = dev->config;
			value = FUNC6(wLength, (u16) 1);
			break;

		case USB_REQ_SET_INTERFACE:
			if (ctrl->bRequestType != USB_RECIP_INTERFACE ||
					!dev->config)
				break;

			value = FUNC10(dev, PRINTER_INTERFACE);
			break;
		case USB_REQ_GET_INTERFACE:
			if (ctrl->bRequestType !=
					(USB_DIR_IN|USB_RECIP_INTERFACE)
					|| !dev->config)
				break;

			*(u8 *)req->buf = dev->interface;
			value = FUNC6(wLength, (u16) 1);
			break;

		default:
			goto unknown;
		}
		break;

	case USB_TYPE_CLASS:
		switch (ctrl->bRequest) {
		case 0: /* Get the IEEE-1284 PNP String */
			/* Only one printer interface is supported. */
			if ((wIndex>>8) != PRINTER_INTERFACE)
				break;

			value = (pnp_string[0]<<8)|pnp_string[1];
			FUNC5(req->buf, pnp_string, value);
			FUNC0(dev, "1284 PNP String: %x %s\n", value,
					&pnp_string[2]);
			break;

		case 1: /* Get Port Status */
			/* Only one printer interface is supported. */
			if (wIndex != PRINTER_INTERFACE)
				break;

			*(u8 *)req->buf = dev->printer_status;
			value = FUNC6(wLength, (u16) 1);
			break;

		case 2: /* Soft Reset */
			/* Only one printer interface is supported. */
			if (wIndex != PRINTER_INTERFACE)
				break;

			FUNC9(dev);

			value = 0;
			break;

		default:
			goto unknown;
		}
		break;

	default:
unknown:
		FUNC1(dev,
			"unknown ctrl req%02x.%02x v%04x i%04x l%d\n",
			ctrl->bRequestType, ctrl->bRequest,
			wValue, wIndex, wLength);
		break;
	}

	/* respond with data transfer before status phase? */
	if (value >= 0) {
		req->length = value;
		req->zero = value < wLength;
		value = FUNC11(gadget->ep0, req, GFP_ATOMIC);
		if (value < 0) {
			FUNC0(dev, "ep_queue --> %d\n", value);
			req->status = 0;
			FUNC8(gadget->ep0, req);
		}
	}

	/* host either stalls (value < 0) or reports success */
	return value;
}