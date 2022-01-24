#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; } ;
struct urb {TYPE_1__* dev; scalar_t__ setup_packet; } ;
struct TYPE_4__ {int /*<<< orphan*/  devnum; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int FUNC5(struct urb *urb)
{
	struct usb_ctrlrequest *req;
	int target_endp;
	int target_dir;
	int target_pipe;
	int ret;

	req = (struct usb_ctrlrequest *) urb->setup_packet;

	/*
	 * The stalled endpoint is specified in the wIndex value. The endpoint
	 * of the urb is the target of this clear_halt request (i.e., control
	 * endpoint).
	 */
	target_endp = FUNC0(req->wIndex) & 0x000f;

	/* the stalled endpoint direction is IN or OUT?. USB_DIR_IN is 0x80.  */
	target_dir = FUNC0(req->wIndex) & 0x0080;

	if (target_dir)
		target_pipe = FUNC2(urb->dev, target_endp);
	else
		target_pipe = FUNC3(urb->dev, target_endp);

	ret = FUNC1(urb->dev, target_pipe);
	if (ret < 0)
		FUNC4("clear_halt error: devnum %d endp %d, %d\n",
					urb->dev->devnum, target_endp, ret);
	else
		FUNC4("clear_halt done: devnum %d endp %d\n",
					urb->dev->devnum, target_endp);

	return ret;
}