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
struct usb_bus {int /*<<< orphan*/ * usbfs_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_buses ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct usb_bus *bus)
{
	if (bus->usbfs_dentry) {
		FUNC0 (bus->usbfs_dentry);
		bus->usbfs_dentry = NULL;
	}

	--num_buses;
	if (num_buses <= 0) {
		FUNC1();
		num_buses = 0;
	}
}