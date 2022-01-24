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
struct us_data {char* transport_name; int max_lun; int /*<<< orphan*/  transport_reset; int /*<<< orphan*/  transport; } ;

/* Variables and functions */
 int /*<<< orphan*/  datafab_transport ; 
 int datafab_unusual_dev_list ; 
 struct usb_device_id const* datafab_usb_ids ; 
 int /*<<< orphan*/  usb_stor_Bulk_reset ; 
 int FUNC0 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int) ; 
 int FUNC1 (struct us_data*) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct us_data *us;
	int result;

	result = FUNC0(&us, intf, id,
			(id - datafab_usb_ids) + datafab_unusual_dev_list);
	if (result)
		return result;

	us->transport_name  = "Datafab Bulk-Only";
	us->transport = datafab_transport;
	us->transport_reset = usb_stor_Bulk_reset;
	us->max_lun = 1;

	result = FUNC1(us);
	return result;
}