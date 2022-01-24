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
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  disconnected; scalar_t__ dev; } ;
struct sierra_port_private {int rts_state; int dtr_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 struct sierra_port_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port, int on)
{
	struct usb_serial *serial = port->serial;
	struct sierra_port_private *portdata;

	portdata = FUNC3(port);
	portdata->rts_state = on;
	portdata->dtr_state = on;

	if (serial->dev) {
		FUNC0(&serial->disc_mutex);
		if (!serial->disconnected)
			FUNC2(port);
		FUNC1(&serial->disc_mutex);
	}
}