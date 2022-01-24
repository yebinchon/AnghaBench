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
struct usb_ctrlrequest {int bRequestType; int bRequest; } ;
struct musb {int dummy; } ;

/* Variables and functions */
#define  USB_REQ_GET_STATUS 128 
 int USB_TYPE_MASK ; 
 int USB_TYPE_STANDARD ; 
 int FUNC0 (struct musb*,struct usb_ctrlrequest const*) ; 

__attribute__((used)) static int
FUNC1(struct musb *musb, const struct usb_ctrlrequest *ctrlrequest)
{
	int handled = 0;	/* not handled */

	if ((ctrlrequest->bRequestType & USB_TYPE_MASK)
			== USB_TYPE_STANDARD) {
		switch (ctrlrequest->bRequest) {
		case USB_REQ_GET_STATUS:
			handled = FUNC0(musb,
					ctrlrequest);
			break;

		/* case USB_REQ_SYNC_FRAME: */

		default:
			break;
		}
	}
	return handled;
}