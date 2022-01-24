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
struct TYPE_2__ {scalar_t__ count; } ;
struct usb_serial_port {int /*<<< orphan*/  mutex; TYPE_1__ port; } ;
struct usb_serial {struct usb_serial_port** port; } ;
struct usb_interface {int dummy; } ;
struct opticon_private {int /*<<< orphan*/  bulk_read_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_serial* FUNC2 (struct usb_interface*) ; 
 struct opticon_private* FUNC3 (struct usb_serial*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct usb_serial *serial = FUNC2(intf);
	struct opticon_private *priv = FUNC3(serial);
	struct usb_serial_port *port = serial->port[0];
	int result;

	FUNC0(&port->mutex);
	if (port->port.count)
		result = FUNC4(priv->bulk_read_urb, GFP_NOIO);
	else
		result = 0;
	FUNC1(&port->mutex);
	return result;
}