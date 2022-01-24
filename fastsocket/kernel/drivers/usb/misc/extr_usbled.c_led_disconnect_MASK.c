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
struct usb_led {int /*<<< orphan*/  udev; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_blue ; 
 int /*<<< orphan*/  dev_attr_green ; 
 int /*<<< orphan*/  dev_attr_red ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_led*) ; 
 struct usb_led* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{
	struct usb_led *dev;

	dev = FUNC3 (interface);

	FUNC1(&interface->dev, &dev_attr_blue);
	FUNC1(&interface->dev, &dev_attr_red);
	FUNC1(&interface->dev, &dev_attr_green);

	/* first remove the files, then set the pointer to NULL */
	FUNC5 (interface, NULL);

	FUNC4(dev->udev);

	FUNC2(dev);

	FUNC0(&interface->dev, "USB LED now disconnected\n");
}