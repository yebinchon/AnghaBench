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
struct tty_struct {int dummy; } ;
struct ktermios {int dummy; } ;
struct ch341_private {unsigned int baud_rate; int line_control; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CH341_BIT_DTR ; 
 int CH341_BIT_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ch341_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC5 (struct tty_struct*) ; 
 struct ch341_private* FUNC6 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty,
		struct usb_serial_port *port, struct ktermios *old_termios)
{
	struct ch341_private *priv = FUNC6(port);
	unsigned baud_rate;
	unsigned long flags;

	FUNC2("ch341_set_termios()");

	baud_rate = FUNC5(tty);

	priv->baud_rate = baud_rate;

	if (baud_rate) {
		FUNC3(&priv->lock, flags);
		priv->line_control |= (CH341_BIT_DTR | CH341_BIT_RTS);
		FUNC4(&priv->lock, flags);
		FUNC0(port->serial->dev, priv);
	} else {
		FUNC3(&priv->lock, flags);
		priv->line_control &= ~(CH341_BIT_DTR | CH341_BIT_RTS);
		FUNC4(&priv->lock, flags);
	}

	FUNC1(port->serial->dev, priv->line_control);

	/* Unimplemented:
	 * (cflag & CSIZE) : data bits [5, 8]
	 * (cflag & PARENB) : parity {NONE, EVEN, ODD}
	 * (cflag & CSTOPB) : stop bits [1, 2]
	 */
}