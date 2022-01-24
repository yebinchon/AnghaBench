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
struct usb_serial_port {scalar_t__ write_urb_busy; } ;
struct urb {struct usb_serial_port* context; } ;
struct keyspan_pda_private {int /*<<< orphan*/  wakeup_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct keyspan_pda_private* FUNC1 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC2(struct urb *urb)
{
	struct usb_serial_port *port = urb->context;
	struct keyspan_pda_private *priv;

	port->write_urb_busy = 0;
	priv = FUNC1(port);

	/* queue up a wakeup at scheduler time */
	FUNC0(&priv->wakeup_work);
}