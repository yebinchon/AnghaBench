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
struct usb_request {scalar_t__ status; int /*<<< orphan*/  complete; int /*<<< orphan*/ * buf; } ;
struct usb_ep {struct dev_data* driver_data; } ;
struct dev_data {int setup_out_error; int setup_out_ready; int /*<<< orphan*/  lock; int /*<<< orphan*/  rbuf; int /*<<< orphan*/  setup_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_ep*,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_data*) ; 
 int /*<<< orphan*/  epio_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4 (struct usb_ep *ep, struct usb_request *req)
{
	struct dev_data		*dev = ep->driver_data;
	unsigned long		flags;
	int			free = 1;

	/* for control OUT, data must still get to userspace */
	FUNC2(&dev->lock, flags);
	if (!dev->setup_in) {
		dev->setup_out_error = (req->status != 0);
		if (!dev->setup_out_error)
			free = 0;
		dev->setup_out_ready = 1;
		FUNC1 (dev);
	}

	/* clean up as appropriate */
	if (free && req->buf != &dev->rbuf)
		FUNC0 (ep, req);
	req->complete = epio_complete;
	FUNC3(&dev->lock, flags);
}