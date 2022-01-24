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
struct usbtest_dev {scalar_t__ out_pipe; scalar_t__ in_pipe; } ;
struct urb {scalar_t__ pipe; } ;

/* Variables and functions */
 int ENOMEM ; 
 int USB_DIR_IN ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int FUNC2 (struct usbtest_dev*,int,struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbtest_dev*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5 (struct usbtest_dev *dev)
{
	int		ep;
	int		retval = 0;
	struct urb	*urb;

	urb = FUNC0 (FUNC3 (dev), 0, 512);
	if (urb == NULL)
		return -ENOMEM;

	if (dev->in_pipe) {
		ep = FUNC4 (dev->in_pipe) | USB_DIR_IN;
		urb->pipe = dev->in_pipe;
		retval = FUNC2(dev, ep, urb);
		if (retval < 0)
			goto done;
	}

	if (dev->out_pipe) {
		ep = FUNC4 (dev->out_pipe);
		urb->pipe = dev->out_pipe;
		retval = FUNC2(dev, ep, urb);
	}
done:
	FUNC1 (urb);
	return retval;
}