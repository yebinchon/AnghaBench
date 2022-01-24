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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct usb_serial_port {int /*<<< orphan*/  mutex; TYPE_2__ port; scalar_t__ console; TYPE_1__* serial; } ;
struct usb_serial_driver {int /*<<< orphan*/  (* close ) (struct usb_serial_port*) ;} ;
struct TYPE_3__ {struct usb_serial_driver* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCB_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port)
{
	struct usb_serial_driver *drv = port->serial->type;

	/*
	 * The console is magical.  Do not hang up the console hardware
	 * or there will be tears.
	 */
	if (port->console)
		return;

	/* Don't call the close method if the hardware hasn't been
	 * initialized.
	 */
	if (!FUNC3(ASYNCB_INITIALIZED, &port->port.flags))
		return;

	FUNC0(&port->mutex);
	if (drv->close)
		drv->close(port);
	FUNC1(&port->mutex);
}