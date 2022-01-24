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
struct usb_interface {scalar_t__ minor; } ;
struct find_interface_arg {scalar_t__ drv; scalar_t__ minor; } ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct usb_interface* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct find_interface_arg *arg = data;
	struct usb_interface *intf;

	if (!FUNC0(dev))
		return 0;

	if (dev->driver != arg->drv)
		return 0;
	intf = FUNC1(dev);
	return intf->minor == arg->minor;
}