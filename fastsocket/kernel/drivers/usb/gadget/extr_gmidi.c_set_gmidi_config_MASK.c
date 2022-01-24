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
struct usb_request {int /*<<< orphan*/  complete; } ;
struct usb_ep {int /*<<< orphan*/  name; struct gmidi_device* driver_data; } ;
struct gmidi_device {struct usb_ep* out_ep; struct usb_ep* in_ep; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gmidi_device*,char*,int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct gmidi_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct usb_request* FUNC2 (struct usb_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buflen ; 
 int /*<<< orphan*/  bulk_in_desc ; 
 int /*<<< orphan*/  bulk_out_desc ; 
 int /*<<< orphan*/  gmidi_complete ; 
 unsigned int qlen ; 
 int FUNC3 (struct usb_ep*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gmidi_device *dev, gfp_t gfp_flags)
{
	int err = 0;
	struct usb_request *req;
	struct usb_ep *ep;
	unsigned i;

	err = FUNC3(dev->in_ep, &bulk_in_desc);
	if (err) {
		FUNC1(dev, "can't start %s: %d\n", dev->in_ep->name, err);
		goto fail;
	}
	dev->in_ep->driver_data = dev;

	err = FUNC3(dev->out_ep, &bulk_out_desc);
	if (err) {
		FUNC1(dev, "can't start %s: %d\n", dev->out_ep->name, err);
		goto fail;
	}
	dev->out_ep->driver_data = dev;

	/* allocate a bunch of read buffers and queue them all at once. */
	ep = dev->out_ep;
	for (i = 0; i < qlen && err == 0; i++) {
		req = FUNC2(ep, buflen);
		if (req) {
			req->complete = gmidi_complete;
			err = FUNC4(ep, req, GFP_ATOMIC);
			if (err) {
				FUNC0(dev, "%s queue req: %d\n", ep->name, err);
			}
		} else {
			err = -ENOMEM;
		}
	}
fail:
	/* caller is responsible for cleanup on error */
	return err;
}