#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_serial {TYPE_1__* interface; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_4__ {struct usb_host_interface* cur_altsetting; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static int FUNC2(struct usb_serial *serial,
			  const struct usb_device_id *id)
{
	struct usb_host_interface *iface_desc = serial->interface->
								cur_altsetting;
	struct usb_endpoint_descriptor *endpoint;
	int num_bulk_out = 0;
	int i;

	for (i = 0; i < iface_desc->desc.bNumEndpoints; i++) {
		endpoint = &iface_desc->endpoint[i].desc;
		if (FUNC1(endpoint)) {
			FUNC0("found bulk out on endpoint %d", i);
			++num_bulk_out;
		}
	}

	if (num_bulk_out == 0) {
		FUNC0("Invalid interface, discarding");
		return -ENODEV;
	}

	return 0;
}