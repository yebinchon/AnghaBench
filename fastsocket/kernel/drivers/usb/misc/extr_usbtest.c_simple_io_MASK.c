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
struct usbtest_dev {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {int transfer_buffer_length; int status; int /*<<< orphan*/  pipe; struct usb_device* dev; struct completion* context; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 int FUNC2 (struct usbtest_dev*,struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct completion*) ; 

__attribute__((used)) static int FUNC8 (
	struct usbtest_dev	*tdev,
	struct urb		*urb,
	int			iterations,
	int			vary,
	int			expected,
	const char		*label
)
{
	struct usb_device	*udev = urb->dev;
	int			max = urb->transfer_buffer_length;
	struct completion	completion;
	int			retval = 0;

	urb->context = &completion;
	while (retval == 0 && iterations-- > 0) {
		FUNC1 (&completion);
		if (FUNC5 (urb->pipe))
			FUNC3 (urb);
		if ((retval = FUNC6 (urb, GFP_KERNEL)) != 0)
			break;

		/* NOTE:  no timeouts; can't be broken out of by interrupt */
		FUNC7 (&completion);
		retval = urb->status;
		urb->dev = udev;
		if (retval == 0 && FUNC4 (urb->pipe))
			retval = FUNC2(tdev, urb);

		if (vary) {
			int	len = urb->transfer_buffer_length;

			len += vary;
			len %= max;
			if (len == 0)
				len = (vary < max) ? vary : max;
			urb->transfer_buffer_length = len;
		}

		/* FIXME if endpoint halted, clear halt (and log) */
	}
	urb->transfer_buffer_length = max;

	if (expected != retval)
		FUNC0(&udev->dev,
			"%s failed, iterations left %d, status %d (not %d)\n",
				label, iterations, retval, expected);
	return retval;
}