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
struct usb_ctrlrequest {scalar_t__ bRequest; scalar_t__ bRequestType; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct urb {scalar_t__ setup_packet; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 scalar_t__ USB_PORT_FEAT_RESET ; 
 scalar_t__ USB_REQ_SET_FEATURE ; 
 scalar_t__ USB_RT_PORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct urb *urb)
{
	struct usb_ctrlrequest *req;
	__u16 value;
	__u16 index;

	req = (struct usb_ctrlrequest *) urb->setup_packet;
	value = FUNC0(req->wValue);
	index = FUNC0(req->wIndex);

	if ((req->bRequest == USB_REQ_SET_FEATURE) &&
			(req->bRequestType == USB_RT_PORT) &&
			(value == USB_PORT_FEAT_RESET)) {
		FUNC1("reset_device_cmd, port %u\n", index);
		return 1;
	} else
		return 0;
}