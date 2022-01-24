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
struct usb_serial_port {TYPE_1__* serial; } ;
struct mct_u232_private {int control_state; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  disconnected; } ;

/* Variables and functions */
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mct_u232_private* FUNC5 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC6(struct usb_serial_port *port, int on)
{
	unsigned int control_state;
	struct mct_u232_private *priv = FUNC5(port);

	FUNC1(&port->serial->disc_mutex);
	if (!port->serial->disconnected) {
		/* drop DTR and RTS */
		FUNC3(&priv->lock);
		if (on)
			priv->control_state |= TIOCM_DTR | TIOCM_RTS;
		else
			priv->control_state &= ~(TIOCM_DTR | TIOCM_RTS);
		control_state = priv->control_state;
		FUNC4(&priv->lock);
		FUNC0(port->serial, control_state);
	}
	FUNC2(&port->serial->disc_mutex);
}