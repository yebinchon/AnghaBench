#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_function {int dummy; } ;
struct TYPE_4__ {TYPE_1__* in; } ;
struct f_obex {unsigned int ctrl_id; TYPE_2__ port; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 struct f_obex* FUNC0 (struct usb_function*) ; 

__attribute__((used)) static int FUNC1(struct usb_function *f, unsigned intf)
{
	struct f_obex		*obex = FUNC0(f);

	if (intf == obex->ctrl_id)
		return 0;

	return obex->port.in->driver_data ? 1 : 0;
}