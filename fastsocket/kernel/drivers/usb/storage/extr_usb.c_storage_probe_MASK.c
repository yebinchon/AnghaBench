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
struct usb_device_id {int dummy; } ;
struct us_data {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  USB_US_TYPE_STOR ; 
 int us_unusual_dev_list ; 
 int FUNC0 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int) ; 
 int FUNC1 (struct us_data*) ; 
 struct usb_device_id const* usb_storage_usb_ids ; 
 scalar_t__ FUNC2 (struct usb_device_id const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct us_data *us;
	int result;

	/*
	 * If libusual is configured, let it decide whether a standard
	 * device should be handled by usb-storage or by ub.
	 * If the device isn't standard (is handled by a subdriver
	 * module) then don't accept it.
	 */
	if (FUNC2(id, USB_US_TYPE_STOR) ||
			FUNC3(intf))
		return -ENXIO;

	/*
	 * Call the general probe procedures.
	 *
	 * The unusual_dev_list array is parallel to the usb_storage_usb_ids
	 * table, so we use the index of the id entry to find the
	 * corresponding unusual_devs entry.
	 */
	result = FUNC0(&us, intf, id,
			(id - usb_storage_usb_ids) + us_unusual_dev_list);
	if (result)
		return result;

	/* No special transport or protocol settings in the main module */

	result = FUNC1(us);
	return result;
}