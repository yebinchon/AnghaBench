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
typedef  int /*<<< orphan*/  usb_complete_t ;
struct TYPE_2__ {int bmAttributes; int /*<<< orphan*/  bInterval; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_device {struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;
struct urb {scalar_t__ actual_length; struct completion* context; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PIPE_INTERRUPT ; 
 int USB_ENDPOINT_XFERTYPE_MASK ; 
 int USB_ENDPOINT_XFER_INT ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 scalar_t__ usb_api_blocking_completion ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,struct usb_device*,unsigned int,void*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,struct usb_device*,unsigned int,void*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct urb *urb,
				    struct usb_device *usb_dev,
				    unsigned int pipe, void *data,
				    unsigned int len, struct completion *done)
{
	struct usb_host_endpoint *ep;
	struct usb_host_endpoint **hostep;
	unsigned int pipend;

	int status;

	hostep = FUNC4(pipe) ? usb_dev->ep_in : usb_dev->ep_out;
	pipend = FUNC3(pipe);
	ep = hostep[pipend];

	if (!ep || (len == 0))
		return -EINVAL;

	if ((ep->desc.bmAttributes & USB_ENDPOINT_XFERTYPE_MASK)
	    == USB_ENDPOINT_XFER_INT) {
		pipe = (pipe & ~(3 << 30)) | (PIPE_INTERRUPT << 30);
		FUNC2(urb, usb_dev, pipe, data, len,
				 (usb_complete_t)usb_api_blocking_completion,
				 NULL, ep->desc.bInterval);
	} else
		FUNC1(urb, usb_dev, pipe, data, len,
				  (usb_complete_t)usb_api_blocking_completion,
				  NULL);

	FUNC0(done);
	urb->context = done;
	urb->actual_length = 0;
	status = FUNC5(urb, GFP_KERNEL);

	return status;
}