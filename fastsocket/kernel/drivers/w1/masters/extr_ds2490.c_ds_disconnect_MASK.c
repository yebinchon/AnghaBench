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
struct usb_interface {int dummy; } ;
struct ds_device {int /*<<< orphan*/  udev; int /*<<< orphan*/  ds_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ds_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct ds_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ds_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ds_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct ds_device *dev;

	dev = FUNC5(intf);
	if (!dev)
		return;

	FUNC3(&ds_mutex);
	FUNC2(&dev->ds_entry);
	FUNC4(&ds_mutex);

	FUNC0(dev);

	FUNC7(intf, NULL);

	FUNC6(dev->udev);
	FUNC1(dev);
}