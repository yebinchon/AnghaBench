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
struct usb_serial_port {TYPE_1__* serial; int /*<<< orphan*/  dev; } ;
struct ftdi_private {int /*<<< orphan*/  interface; } ;
struct TYPE_2__ {int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTDI_SIO_SET_FLOW_CTRL_REQUEST ; 
 int /*<<< orphan*/  FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  WDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ftdi_private* FUNC6 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct usb_serial_port *port, int on)
{
	struct ftdi_private *priv = FUNC6(port);
	char buf[1];

	FUNC2(&port->serial->disc_mutex);
	if (!port->serial->disconnected) {
		/* Disable flow control */
		if (!on && FUNC5(port->serial->dev,
			    FUNC7(port->serial->dev, 0),
			    FTDI_SIO_SET_FLOW_CTRL_REQUEST,
			    FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE,
			    0, priv->interface, buf, 0,
			    WDR_TIMEOUT) < 0) {
			    FUNC1(&port->dev, "error from flowcontrol urb\n");
		}
		/* drop RTS and DTR */
		if (on)
			FUNC4(port, TIOCM_DTR | TIOCM_RTS);
		else
			FUNC0(port, TIOCM_DTR | TIOCM_RTS);
	}
	FUNC3(&port->serial->disc_mutex);
}