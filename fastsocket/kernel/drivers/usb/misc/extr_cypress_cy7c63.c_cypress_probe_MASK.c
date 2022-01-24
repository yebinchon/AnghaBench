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
struct cypress {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_port0 ; 
 int /*<<< orphan*/  dev_attr_port1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct cypress*) ; 
 struct cypress* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,struct cypress*) ; 

__attribute__((used)) static int FUNC10(struct usb_interface *interface,
			 const struct usb_device_id *id)
{
	struct cypress *dev = NULL;
	int retval = -ENOMEM;

	/* allocate memory for our device state and initialize it */
	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC0(&interface->dev, "Out of memory!\n");
		goto error_mem;
	}

	dev->udev = FUNC7(FUNC4(interface));

	/* save our data pointer in this interface device */
	FUNC9(interface, dev);

	/* create device attribute files */
	retval = FUNC2(&interface->dev, &dev_attr_port0);
	if (retval)
		goto error;
	retval = FUNC2(&interface->dev, &dev_attr_port1);
	if (retval)
		goto error;

	/* let the user know that the device is now attached */
	FUNC1(&interface->dev,
		 "Cypress CY7C63xxx device now attached\n");
	return 0;

error:
	FUNC3(&interface->dev, &dev_attr_port0);
	FUNC3(&interface->dev, &dev_attr_port1);
	FUNC9(interface, NULL);
	FUNC8(dev->udev);
	FUNC5(dev);

error_mem:
	return retval;
}