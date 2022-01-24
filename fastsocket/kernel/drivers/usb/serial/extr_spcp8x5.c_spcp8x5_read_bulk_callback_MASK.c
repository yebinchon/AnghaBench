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
typedef  int u8 ;
struct TYPE_4__ {scalar_t__ count; } ;
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; TYPE_2__ port; } ;
struct urb {unsigned char* transfer_buffer; int status; int actual_length; int /*<<< orphan*/  dev; struct usb_serial_port* context; } ;
struct tty_struct {int dummy; } ;
struct spcp8x5_private {int line_status; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 char TTY_PARITY ; 
 int UART_BREAK_ERROR ; 
 int UART_FRAME_ERROR ; 
 int UART_OVERRUN_ERROR ; 
 int UART_PARITY_ERROR ; 
 int UART_STATE_TRANSIENT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,unsigned char,char) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 struct tty_struct* FUNC7 (TYPE_2__*) ; 
 struct spcp8x5_private* FUNC8 (struct usb_serial_port*) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct usb_serial_port *port = urb->context;
	struct spcp8x5_private *priv = FUNC8(port);
	struct tty_struct *tty;
	unsigned char *data = urb->transfer_buffer;
	unsigned long flags;
	int i;
	int result = urb->status;
	u8 status;
	char tty_flag;

	FUNC0(&port->dev, "start, result = %d, urb->actual_length = %d\n,",
		result, urb->actual_length);

	/* check the urb status */
	if (result) {
		if (!port->port.count)
			return;
		if (result == -EPROTO) {
			/* spcp8x5 mysteriously fails with -EPROTO */
			/* reschedule the read */
			urb->dev = port->serial->dev;
			result = FUNC9(urb , GFP_ATOMIC);
			if (result)
				FUNC0(&port->dev,
					"failed submitting read urb %d\n",
					result);
			return;
		}
		FUNC0(&port->dev, "unable to handle the error, exiting.\n");
		return;
	}

	/* get tty_flag from status */
	tty_flag = TTY_NORMAL;

	FUNC1(&priv->lock, flags);
	status = priv->line_status;
	priv->line_status &= ~UART_STATE_TRANSIENT_MASK;
	FUNC2(&priv->lock, flags);
	/* wake up the wait for termios */
	FUNC10(&priv->delta_msr_wait);

	/* break takes precedence over parity, which takes precedence over
	 * framing errors */
	if (status & UART_BREAK_ERROR)
		tty_flag = TTY_BREAK;
	else if (status & UART_PARITY_ERROR)
		tty_flag = TTY_PARITY;
	else if (status & UART_FRAME_ERROR)
		tty_flag = TTY_FRAME;
	FUNC0(&port->dev, "tty_flag = %d\n", tty_flag);

	tty = FUNC7(&port->port);
	if (tty && urb->actual_length) {
		FUNC3(tty, urb->actual_length + 1);
		/* overrun is special, not associated with a char */
		if (status & UART_OVERRUN_ERROR)
			FUNC5(tty, 0, TTY_OVERRUN);
		for (i = 0; i < urb->actual_length; ++i)
			FUNC5(tty, data[i], tty_flag);
		FUNC4(tty);
	}
	FUNC6(tty);

	/* Schedule the next read _if_ we are still open */
	if (port->port.count) {
		urb->dev = port->serial->dev;
		result = FUNC9(urb , GFP_ATOMIC);
		if (result)
			FUNC0(&port->dev, "failed submitting read urb %d\n",
				result);
	}

	return;
}