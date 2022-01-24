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
struct usb_request {scalar_t__ buf; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; } ;
struct fsg_dev {int new_config; int /*<<< orphan*/  config; int /*<<< orphan*/  gadget; struct usb_request* ep0req; } ;

/* Variables and functions */
 int CONFIG_VALUE ; 
 int DELAYED_STATUS ; 
 int EDOM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FSG_STATE_CONFIG_CHANGE ; 
 int /*<<< orphan*/  FSG_STATE_INTERFACE_CHANGE ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
#define  USB_DT_CONFIG 137 
#define  USB_DT_DEVICE 136 
#define  USB_DT_DEVICE_QUALIFIER 135 
#define  USB_DT_OTHER_SPEED_CONFIG 134 
#define  USB_DT_STRING 133 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_INTERFACE ; 
#define  USB_REQ_GET_CONFIGURATION 132 
#define  USB_REQ_GET_DESCRIPTOR 131 
#define  USB_REQ_GET_INTERFACE 130 
#define  USB_REQ_SET_CONFIGURATION 129 
#define  USB_REQ_SET_INTERFACE 128 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*,...) ; 
 int /*<<< orphan*/  dev_qualifier ; 
 int /*<<< orphan*/  device_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fsg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stringtab ; 
 int FUNC6 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct fsg_dev *fsg,
		const struct usb_ctrlrequest *ctrl)
{
	struct usb_request	*req = fsg->ep0req;
	int			value = -EOPNOTSUPP;
	u16			w_index = FUNC2(ctrl->wIndex);
	u16			w_value = FUNC2(ctrl->wValue);

	/* Usually this just stores reply data in the pre-allocated ep0 buffer,
	 * but config change events will also reconfigure hardware. */
	switch (ctrl->bRequest) {

	case USB_REQ_GET_DESCRIPTOR:
		if (ctrl->bRequestType != (USB_DIR_IN | USB_TYPE_STANDARD |
				USB_RECIP_DEVICE))
			break;
		switch (w_value >> 8) {

		case USB_DT_DEVICE:
			FUNC0(fsg, "get device descriptor\n");
			value = sizeof device_desc;
			FUNC3(req->buf, &device_desc, value);
			break;
		case USB_DT_DEVICE_QUALIFIER:
			FUNC0(fsg, "get device qualifier\n");
			if (!FUNC1(fsg->gadget))
				break;
			value = sizeof dev_qualifier;
			FUNC3(req->buf, &dev_qualifier, value);
			break;

		case USB_DT_OTHER_SPEED_CONFIG:
			FUNC0(fsg, "get other-speed config descriptor\n");
			if (!FUNC1(fsg->gadget))
				break;
			goto get_config;
		case USB_DT_CONFIG:
			FUNC0(fsg, "get configuration descriptor\n");
get_config:
			value = FUNC4(fsg->gadget,
					req->buf,
					w_value >> 8,
					w_value & 0xff);
			break;

		case USB_DT_STRING:
			FUNC0(fsg, "get string descriptor\n");

			/* wIndex == language code */
			value = FUNC6(&stringtab,
					w_value & 0xff, req->buf);
			break;
		}
		break;

	/* One config, two speeds */
	case USB_REQ_SET_CONFIGURATION:
		if (ctrl->bRequestType != (USB_DIR_OUT | USB_TYPE_STANDARD |
				USB_RECIP_DEVICE))
			break;
		FUNC0(fsg, "set configuration\n");
		if (w_value == CONFIG_VALUE || w_value == 0) {
			fsg->new_config = w_value;

			/* Raise an exception to wipe out previous transaction
			 * state (queued bufs, etc) and set the new config. */
			FUNC5(fsg, FSG_STATE_CONFIG_CHANGE);
			value = DELAYED_STATUS;
		}
		break;
	case USB_REQ_GET_CONFIGURATION:
		if (ctrl->bRequestType != (USB_DIR_IN | USB_TYPE_STANDARD |
				USB_RECIP_DEVICE))
			break;
		FUNC0(fsg, "get configuration\n");
		*(u8 *) req->buf = fsg->config;
		value = 1;
		break;

	case USB_REQ_SET_INTERFACE:
		if (ctrl->bRequestType != (USB_DIR_OUT| USB_TYPE_STANDARD |
				USB_RECIP_INTERFACE))
			break;
		if (fsg->config && w_index == 0) {

			/* Raise an exception to wipe out previous transaction
			 * state (queued bufs, etc) and install the new
			 * interface altsetting. */
			FUNC5(fsg, FSG_STATE_INTERFACE_CHANGE);
			value = DELAYED_STATUS;
		}
		break;
	case USB_REQ_GET_INTERFACE:
		if (ctrl->bRequestType != (USB_DIR_IN | USB_TYPE_STANDARD |
				USB_RECIP_INTERFACE))
			break;
		if (!fsg->config)
			break;
		if (w_index != 0) {
			value = -EDOM;
			break;
		}
		FUNC0(fsg, "get interface\n");
		*(u8 *) req->buf = 0;
		value = 1;
		break;

	default:
		FUNC0(fsg,
			"unknown control req %02x.%02x v%04x i%04x l%u\n",
			ctrl->bRequestType, ctrl->bRequest,
			w_value, w_index, FUNC2(ctrl->wLength));
	}

	return value;
}