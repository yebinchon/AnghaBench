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
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct spcp8x5_private {unsigned int line_control; unsigned int line_status; int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int MCR_DTR ; 
 unsigned int MCR_RTS ; 
 unsigned int MSR_STATUS_LINE_CTS ; 
 unsigned int MSR_STATUS_LINE_DCD ; 
 unsigned int MSR_STATUS_LINE_DSR ; 
 unsigned int MSR_STATUS_LINE_RI ; 
 unsigned int TIOCM_CD ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RI ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spcp8x5_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct file *file)
{
	struct usb_serial_port *port = tty->driver_data;
	struct spcp8x5_private *priv = FUNC2(port);
	unsigned long flags;
	unsigned int mcr;
	unsigned int status;
	unsigned int result;

	FUNC0(&priv->lock, flags);
	mcr = priv->line_control;
	status = priv->line_status;
	FUNC1(&priv->lock, flags);

	result = ((mcr & MCR_DTR)			? TIOCM_DTR : 0)
		  | ((mcr & MCR_RTS)			? TIOCM_RTS : 0)
		  | ((status & MSR_STATUS_LINE_CTS)	? TIOCM_CTS : 0)
		  | ((status & MSR_STATUS_LINE_DSR)	? TIOCM_DSR : 0)
		  | ((status & MSR_STATUS_LINE_RI)	? TIOCM_RI  : 0)
		  | ((status & MSR_STATUS_LINE_DCD)	? TIOCM_CD  : 0);

	return result;
}