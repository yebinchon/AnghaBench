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
struct usb_serial {int num_ports; int /*<<< orphan*/ * port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_serial *serial)
{
	int i;

	/* free private structure allocated for serial port */
	for (i = 0; i < serial->num_ports; ++i)
		FUNC0(FUNC2(serial->port[i]));

	/* free private structure allocated for serial device */
	FUNC0(FUNC1(serial));
}