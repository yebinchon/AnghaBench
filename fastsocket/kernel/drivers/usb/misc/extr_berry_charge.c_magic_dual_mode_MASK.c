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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,char*,int,int) ; 
 int FUNC5 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_device *udev)
{
	char *dummy_buffer = FUNC3(2, GFP_KERNEL);
	int retval;

	if (!dummy_buffer)
		return -ENOMEM;

	/* send magic command so that the Blackberry Pearl device exposes
	 * two interfaces: both the USB mass-storage one and one which can
	 * be used for database access. */
	FUNC0(&udev->dev, "Sending magic pearl command\n");
	retval = FUNC4(udev, FUNC6(udev, 0),
				 0xa9, 0xc0, 1, 1, dummy_buffer, 2, 100);
	FUNC0(&udev->dev, "Magic pearl command returned %d\n", retval);

	FUNC0(&udev->dev, "Calling set_configuration\n");
	retval = FUNC5(udev, 1);
	if (retval)
		FUNC1(&udev->dev, "Set Configuration failed :%d.\n", retval);

	FUNC2(dummy_buffer);
	return retval;
}