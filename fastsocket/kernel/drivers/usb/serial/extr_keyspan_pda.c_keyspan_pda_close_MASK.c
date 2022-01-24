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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/  write_urb; struct usb_serial* serial; } ;
struct usb_serial {scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;

	if (serial->dev) {
		/* shutdown our bulk reads and writes */
		FUNC0(port->write_urb);
		FUNC0(port->interrupt_in_urb);
	}
}