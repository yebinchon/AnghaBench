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
struct usb_serial {scalar_t__* port; } ;
struct TYPE_2__ {scalar_t__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial*) ; 
 TYPE_1__ usbcons_info ; 

void FUNC2(struct usb_serial *serial)
{
	if (serial && serial->port && serial->port[0]
				&& serial->port[0] == usbcons_info.port) {
		FUNC0();
		FUNC1(serial);
	}
}