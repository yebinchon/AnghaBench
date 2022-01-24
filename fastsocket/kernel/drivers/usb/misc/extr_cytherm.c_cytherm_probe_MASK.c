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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_cytherm {int brightness; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_brightness ; 
 int /*<<< orphan*/  dev_attr_button ; 
 int /*<<< orphan*/  dev_attr_port0 ; 
 int /*<<< orphan*/  dev_attr_port1 ; 
 int /*<<< orphan*/  dev_attr_temp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_cytherm*) ; 
 struct usb_cytherm* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,struct usb_cytherm*) ; 

__attribute__((used)) static int FUNC10(struct usb_interface *interface, 
			 const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC4(interface);
	struct usb_cytherm *dev = NULL;
	int retval = -ENOMEM;

	dev = FUNC6 (sizeof(struct usb_cytherm), GFP_KERNEL);
	if (dev == NULL) {
		FUNC0 (&interface->dev, "Out of memory\n");
		goto error_mem;
	}

	dev->udev = FUNC7(udev);

	FUNC9 (interface, dev);

	dev->brightness = 0xFF;

	retval = FUNC2(&interface->dev, &dev_attr_brightness);
	if (retval)
		goto error;
	retval = FUNC2(&interface->dev, &dev_attr_temp);
	if (retval)
		goto error;
	retval = FUNC2(&interface->dev, &dev_attr_button);
	if (retval)
		goto error;
	retval = FUNC2(&interface->dev, &dev_attr_port0);
	if (retval)
		goto error;
	retval = FUNC2(&interface->dev, &dev_attr_port1);
	if (retval)
		goto error;

	FUNC1 (&interface->dev,
		  "Cypress thermometer device now attached\n");
	return 0;
error:
	FUNC3(&interface->dev, &dev_attr_brightness);
	FUNC3(&interface->dev, &dev_attr_temp);
	FUNC3(&interface->dev, &dev_attr_button);
	FUNC3(&interface->dev, &dev_attr_port0);
	FUNC3(&interface->dev, &dev_attr_port1);
	FUNC9 (interface, NULL);
	FUNC8(dev->udev);
	FUNC5(dev);
error_mem:
	return retval;
}