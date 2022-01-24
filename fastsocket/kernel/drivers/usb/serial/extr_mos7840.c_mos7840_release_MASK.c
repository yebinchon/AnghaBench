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
struct moschip_port {struct moschip_port* dr; struct moschip_port* ctrl_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct moschip_port*) ; 
 struct moschip_port* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_serial *serial)
{
	int i;
	struct moschip_port *mos7840_port;
	FUNC0("%s", " release :entering..........");

	if (!serial) {
		FUNC0("%s", "Invalid Handler");
		return;
	}

	/* check for the ports to be closed,close the ports and disconnect */

	/* free private structure allocated for serial port  *
	 * stop reads and writes on all ports                */

	for (i = 0; i < serial->num_ports; ++i) {
		mos7840_port = FUNC2(serial->port[i]);
		FUNC0("mos7840_port %d = %p", i, mos7840_port);
		if (mos7840_port) {
			FUNC1(mos7840_port->ctrl_buf);
			FUNC1(mos7840_port->dr);
			FUNC1(mos7840_port);
		}
	}

	FUNC0("%s", "Thank u :: ");

}