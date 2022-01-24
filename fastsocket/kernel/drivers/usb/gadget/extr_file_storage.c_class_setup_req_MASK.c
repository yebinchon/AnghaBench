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
struct usb_request {int /*<<< orphan*/  context; scalar_t__ buf; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; } ;
struct fsg_dev {struct usb_request* ep0req; int /*<<< orphan*/  nluns; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
 int DELAYED_STATUS ; 
 int EDOM ; 
 int EOPNOTSUPP ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FSG_STATE_RESET ; 
 int MAX_COMMAND_SIZE ; 
#define  USB_BULK_GET_MAX_LUN_REQUEST 130 
#define  USB_BULK_RESET_REQUEST 129 
#define  USB_CBI_ADSC_REQUEST 128 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_dev*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  received_cbi_adsc ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct fsg_dev *fsg,
		const struct usb_ctrlrequest *ctrl)
{
	struct usb_request	*req = fsg->ep0req;
	int			value = -EOPNOTSUPP;
	u16			w_index = FUNC2(ctrl->wIndex);
	u16                     w_value = FUNC2(ctrl->wValue);
	u16			w_length = FUNC2(ctrl->wLength);

	if (!fsg->config)
		return value;

	/* Handle Bulk-only class-specific requests */
	if (FUNC4()) {
		switch (ctrl->bRequest) {

		case USB_BULK_RESET_REQUEST:
			if (ctrl->bRequestType != (USB_DIR_OUT |
					USB_TYPE_CLASS | USB_RECIP_INTERFACE))
				break;
			if (w_index != 0 || w_value != 0) {
				value = -EDOM;
				break;
			}

			/* Raise an exception to stop the current operation
			 * and reinitialize our state. */
			FUNC0(fsg, "bulk reset request\n");
			FUNC3(fsg, FSG_STATE_RESET);
			value = DELAYED_STATUS;
			break;

		case USB_BULK_GET_MAX_LUN_REQUEST:
			if (ctrl->bRequestType != (USB_DIR_IN |
					USB_TYPE_CLASS | USB_RECIP_INTERFACE))
				break;
			if (w_index != 0 || w_value != 0) {
				value = -EDOM;
				break;
			}
			FUNC1(fsg, "get max LUN\n");
			*(u8 *) req->buf = fsg->nluns - 1;
			value = 1;
			break;
		}
	}

	/* Handle CBI class-specific requests */
	else {
		switch (ctrl->bRequest) {

		case USB_CBI_ADSC_REQUEST:
			if (ctrl->bRequestType != (USB_DIR_OUT |
					USB_TYPE_CLASS | USB_RECIP_INTERFACE))
				break;
			if (w_index != 0 || w_value != 0) {
				value = -EDOM;
				break;
			}
			if (w_length > MAX_COMMAND_SIZE) {
				value = -EOVERFLOW;
				break;
			}
			value = w_length;
			fsg->ep0req->context = received_cbi_adsc;
			break;
		}
	}

	if (value == -EOPNOTSUPP)
		FUNC1(fsg,
			"unknown class-specific control req "
			"%02x.%02x v%04x i%04x l%u\n",
			ctrl->bRequestType, ctrl->bRequest,
			FUNC2(ctrl->wValue), w_index, w_length);
	return value;
}