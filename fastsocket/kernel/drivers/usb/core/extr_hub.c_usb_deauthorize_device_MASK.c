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
struct TYPE_2__ {scalar_t__ bNumConfigurations; } ;
struct usb_device {scalar_t__ authorized; TYPE_1__ descriptor; void* serial; void* manufacturer; void* product; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 

int FUNC6(struct usb_device *usb_dev)
{
	FUNC3(usb_dev);
	if (usb_dev->authorized == 0)
		goto out_unauthorized;

	usb_dev->authorized = 0;
	FUNC4(usb_dev, -1);

	FUNC0(usb_dev->product);
	usb_dev->product = FUNC1("n/a (unauthorized)", GFP_KERNEL);
	FUNC0(usb_dev->manufacturer);
	usb_dev->manufacturer = FUNC1("n/a (unauthorized)", GFP_KERNEL);
	FUNC0(usb_dev->serial);
	usb_dev->serial = FUNC1("n/a (unauthorized)", GFP_KERNEL);

	FUNC2(usb_dev);
	usb_dev->descriptor.bNumConfigurations = 0;

out_unauthorized:
	FUNC5(usb_dev);
	return 0;
}