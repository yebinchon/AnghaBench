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
struct usb_cytherm {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_brightness ; 
 int /*<<< orphan*/  dev_attr_button ; 
 int /*<<< orphan*/  dev_attr_port0 ; 
 int /*<<< orphan*/  dev_attr_port1 ; 
 int /*<<< orphan*/  dev_attr_temp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_cytherm*) ; 
 struct usb_cytherm* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{
	struct usb_cytherm *dev;

	dev = FUNC3 (interface);

	FUNC1(&interface->dev, &dev_attr_brightness);
	FUNC1(&interface->dev, &dev_attr_temp);
	FUNC1(&interface->dev, &dev_attr_button);
	FUNC1(&interface->dev, &dev_attr_port0);
	FUNC1(&interface->dev, &dev_attr_port1);

	/* first remove the files, then NULL the pointer */
	FUNC5 (interface, NULL);

	FUNC4(dev->udev);

	FUNC2(dev);

	FUNC0(&interface->dev, "Cypress thermometer now disconnected\n");
}