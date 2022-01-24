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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct pl2303_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  line_control; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_DTR ; 
 int /*<<< orphan*/  CONTROL_RTS ; 
 int ENODEV ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pl2303_private* FUNC4 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct file *file,
			   unsigned int set, unsigned int clear)
{
	struct usb_serial_port *port = tty->driver_data;
	struct pl2303_private *priv = FUNC4(port);
	unsigned long flags;
	u8 control;

	if (!FUNC3(port->serial->interface))
		return -ENODEV;

	FUNC1(&priv->lock, flags);
	if (set & TIOCM_RTS)
		priv->line_control |= CONTROL_RTS;
	if (set & TIOCM_DTR)
		priv->line_control |= CONTROL_DTR;
	if (clear & TIOCM_RTS)
		priv->line_control &= ~CONTROL_RTS;
	if (clear & TIOCM_DTR)
		priv->line_control &= ~CONTROL_DTR;
	control = priv->line_control;
	FUNC2(&priv->lock, flags);

	return FUNC0(port->serial->dev, control);
}