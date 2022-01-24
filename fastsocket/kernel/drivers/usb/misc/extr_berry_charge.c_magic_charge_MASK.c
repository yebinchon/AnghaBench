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
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,char*,int,int) ; 
 int FUNC5 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_device *udev)
{
	char *dummy_buffer = FUNC3(2, GFP_KERNEL);
	int retval;

	if (!dummy_buffer)
		return -ENOMEM;

	/* send two magic commands and then set the configuration.  The device
	 * will then reset itself with the new power usage and should start
	 * charging. */

	/* Note, with testing, it only seems that the first message is really
	 * needed (at least for the 8700c), but to be safe, we emulate what
	 * other operating systems seem to be sending to their device.  We
	 * really need to get some specs for this device to be sure about what
	 * is going on here.
	 */
	FUNC0(&udev->dev, "Sending first magic command\n");
	retval = FUNC4(udev, FUNC6(udev, 0),
				 0xa5, 0xc0, 0, 1, dummy_buffer, 2, 100);
	if (retval != 2) {
		FUNC1(&udev->dev, "First magic command failed: %d.\n",
			retval);
		goto exit;
	}

	FUNC0(&udev->dev, "Sending second magic command\n");
	retval = FUNC4(udev, FUNC6(udev, 0),
				 0xa2, 0x40, 0, 1, dummy_buffer, 0, 100);
	if (retval != 0) {
		FUNC1(&udev->dev, "Second magic command failed: %d.\n",
			retval);
		goto exit;
	}

	FUNC0(&udev->dev, "Calling set_configuration\n");
	retval = FUNC5(udev, 1);
	if (retval)
		FUNC1(&udev->dev, "Set Configuration failed :%d.\n", retval);

exit:
	FUNC2(dummy_buffer);
	return retval;
}