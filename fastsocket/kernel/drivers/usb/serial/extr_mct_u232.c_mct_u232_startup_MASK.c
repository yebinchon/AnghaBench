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
struct usb_serial_port {TYPE_1__* read_urb; TYPE_1__* interrupt_in_urb; int /*<<< orphan*/  write_wait; } ;
struct usb_serial {struct usb_serial_port** port; } ;
struct mct_u232_private {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct usb_serial_port* context; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mct_u232_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,struct mct_u232_private*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial *serial)
{
	struct mct_u232_private *priv;
	struct usb_serial_port *port, *rport;

	priv = FUNC1(sizeof(struct mct_u232_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC2(&priv->lock);
	FUNC4(serial->port[0], priv);

	FUNC0(&serial->port[0]->write_wait);

	/* Puh, that's dirty */
	port = serial->port[0];
	rport = serial->port[1];
	/* No unlinking, it wasn't submitted yet. */
	FUNC3(port->read_urb);
	port->read_urb = rport->interrupt_in_urb;
	rport->interrupt_in_urb = NULL;
	port->read_urb->context = port;

	return 0;
}