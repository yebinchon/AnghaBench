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
struct usb_bus {int /*<<< orphan*/  busnum; int /*<<< orphan*/  bus_list; int /*<<< orphan*/  controller; } ;
struct TYPE_2__ {int /*<<< orphan*/  busmap; } ;

/* Variables and functions */
 TYPE_1__ busmap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_bus_list_lock ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*) ; 

__attribute__((used)) static void FUNC6 (struct usb_bus *bus)
{
	FUNC1 (bus->controller, "USB bus %d deregistered\n", bus->busnum);

	/*
	 * NOTE: make sure that all the devices are removed by the
	 * controller code, as well as having it call this when cleaning
	 * itself up
	 */
	FUNC3(&usb_bus_list_lock);
	FUNC2 (&bus->bus_list);
	FUNC4(&usb_bus_list_lock);

	FUNC5(bus);

	FUNC0 (bus->busnum, busmap.busmap);
}