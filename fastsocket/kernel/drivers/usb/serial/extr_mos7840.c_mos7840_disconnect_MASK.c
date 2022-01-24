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
struct moschip_port {int zombie; int /*<<< orphan*/  control_urb; int /*<<< orphan*/  pool_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct moschip_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usb_serial *serial)
{
	int i;
	unsigned long flags;
	struct moschip_port *mos7840_port;
	FUNC0("%s", " disconnect :entering..........");

	if (!serial) {
		FUNC0("%s", "Invalid Handler");
		return;
	}

	/* check for the ports to be closed,close the ports and disconnect */

	/* free private structure allocated for serial port  *
	 * stop reads and writes on all ports                */

	for (i = 0; i < serial->num_ports; ++i) {
		mos7840_port = FUNC1(serial->port[i]);
		FUNC0 ("mos7840_port %d = %p", i, mos7840_port);
		if (mos7840_port) {
			FUNC2(&mos7840_port->pool_lock, flags);
			mos7840_port->zombie = 1;
			FUNC3(&mos7840_port->pool_lock, flags);
			FUNC4(mos7840_port->control_urb);
		}
	}

	FUNC0("%s", "Thank u :: ");

}