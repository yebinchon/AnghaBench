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
struct usbtmc_device_data {int zombie; int /*<<< orphan*/  kref; int /*<<< orphan*/  io_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  capability_attr_grp ; 
 int /*<<< orphan*/  data_attr_grp ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usbtmc_device_data* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  usbtmc_class ; 
 int /*<<< orphan*/  usbtmc_delete ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct usbtmc_device_data *data;

	FUNC0(&intf->dev, "usbtmc_disconnect called\n");

	data = FUNC6(intf);
	FUNC5(intf, &usbtmc_class);
	FUNC4(&intf->dev.kobj, &capability_attr_grp);
	FUNC4(&intf->dev.kobj, &data_attr_grp);
	FUNC2(&data->io_mutex);
	data->zombie = 1;
	FUNC3(&data->io_mutex);
	FUNC1(&data->kref, usbtmc_delete);
}