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
typedef  int /*<<< orphan*/  u8 ;
struct usb_gadget {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wLength; } ;
struct fsg_dev {char* ep0req_name; TYPE_1__* ep0req; int /*<<< orphan*/  ep0_req_tag; } ;
struct TYPE_2__ {int length; int zero; int /*<<< orphan*/ * context; } ;

/* Variables and functions */
 int DELAYED_STATUS ; 
 int USB_DIR_IN ; 
 int USB_TYPE_CLASS ; 
 int USB_TYPE_MASK ; 
 int FUNC0 (struct fsg_dev*,struct usb_ctrlrequest const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_dev*,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct fsg_dev*) ; 
 struct fsg_dev* FUNC3 (struct usb_gadget*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (struct fsg_dev*,struct usb_ctrlrequest const*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *gadget,
		const struct usb_ctrlrequest *ctrl)
{
	struct fsg_dev		*fsg = FUNC3(gadget);
	int			rc;
	int			w_length = FUNC4(ctrl->wLength);

	++fsg->ep0_req_tag;		// Record arrival of a new request
	fsg->ep0req->context = NULL;
	fsg->ep0req->length = 0;
	FUNC1(fsg, "ep0-setup", (u8 *) ctrl, sizeof(*ctrl));

	if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_CLASS)
		rc = FUNC0(fsg, ctrl);
	else
		rc = FUNC6(fsg, ctrl);

	/* Respond with data/status or defer until later? */
	if (rc >= 0 && rc != DELAYED_STATUS) {
		rc = FUNC5(rc, w_length);
		fsg->ep0req->length = rc;
		fsg->ep0req->zero = rc < w_length;
		fsg->ep0req_name = (ctrl->bRequestType & USB_DIR_IN ?
				"ep0-in" : "ep0-out");
		rc = FUNC2(fsg);
	}

	/* Device either stalls (rc < 0) or reports success */
	return rc;
}