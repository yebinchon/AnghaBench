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
struct cypress {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_port0 ; 
 int /*<<< orphan*/  dev_attr_port1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cypress*) ; 
 struct cypress* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{
	struct cypress *dev;

	dev = FUNC3(interface);

	/* remove device attribute files */
	FUNC1(&interface->dev, &dev_attr_port0);
	FUNC1(&interface->dev, &dev_attr_port1);
	/* the intfdata can be set to NULL only after the
	 * device files have been removed */
	FUNC5(interface, NULL);

	FUNC4(dev->udev);

	FUNC0(&interface->dev,
		 "Cypress CY7C63xxx device now disconnected\n");

	FUNC2(dev);
}