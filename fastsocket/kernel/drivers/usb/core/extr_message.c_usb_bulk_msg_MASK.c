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
struct TYPE_2__ {int bmAttributes; int /*<<< orphan*/  bInterval; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PIPE_INTERRUPT ; 
 int USB_ENDPOINT_XFERTYPE_MASK ; 
 int USB_ENDPOINT_XFER_INT ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_api_blocking_completion ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,struct usb_device*,unsigned int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,struct usb_device*,unsigned int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_host_endpoint* FUNC3 (struct usb_device*,unsigned int) ; 
 int FUNC4 (struct urb*,int,int*) ; 

int FUNC5(struct usb_device *usb_dev, unsigned int pipe,
		 void *data, int len, int *actual_length, int timeout)
{
	struct urb *urb;
	struct usb_host_endpoint *ep;

	ep = FUNC3(usb_dev, pipe);
	if (!ep || len < 0)
		return -EINVAL;

	urb = FUNC0(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;

	if ((ep->desc.bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) ==
			USB_ENDPOINT_XFER_INT) {
		pipe = (pipe & ~(3 << 30)) | (PIPE_INTERRUPT << 30);
		FUNC2(urb, usb_dev, pipe, data, len,
				usb_api_blocking_completion, NULL,
				ep->desc.bInterval);
	} else
		FUNC1(urb, usb_dev, pipe, data, len,
				usb_api_blocking_completion, NULL);

	return FUNC4(urb, timeout, actual_length);
}