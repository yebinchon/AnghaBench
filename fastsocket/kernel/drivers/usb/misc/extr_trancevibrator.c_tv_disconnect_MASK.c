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
struct trancevibrator {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_speed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct trancevibrator*) ; 
 struct trancevibrator* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *interface)
{
	struct trancevibrator *dev;

	dev = FUNC2 (interface);
	FUNC0(&interface->dev, &dev_attr_speed);
	FUNC4(interface, NULL);
	FUNC3(dev->udev);
	FUNC1(dev);
}