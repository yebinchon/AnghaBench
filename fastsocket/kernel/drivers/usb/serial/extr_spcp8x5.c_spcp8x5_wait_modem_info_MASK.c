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
struct spcp8x5_private {unsigned int line_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  delta_msr_wait; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 unsigned int MSR_STATUS_LINE_CTS ; 
 unsigned int MSR_STATUS_LINE_DCD ; 
 unsigned int MSR_STATUS_LINE_DSR ; 
 unsigned int MSR_STATUS_LINE_RI ; 
 unsigned int TIOCM_CD ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_RNG ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spcp8x5_private* FUNC4 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port,
				   unsigned int arg)
{
	struct spcp8x5_private *priv = FUNC4(port);
	unsigned long flags;
	unsigned int prevstatus;
	unsigned int status;
	unsigned int changed;

	FUNC2(&priv->lock, flags);
	prevstatus = priv->line_status;
	FUNC3(&priv->lock, flags);

	while (1) {
		/* wake up in bulk read */
		FUNC0(&priv->delta_msr_wait);

		/* see if a signal did it */
		if (FUNC1(current))
			return -ERESTARTSYS;

		FUNC2(&priv->lock, flags);
		status = priv->line_status;
		FUNC3(&priv->lock, flags);

		changed = prevstatus^status;

		if (((arg & TIOCM_RNG) && (changed & MSR_STATUS_LINE_RI)) ||
		    ((arg & TIOCM_DSR) && (changed & MSR_STATUS_LINE_DSR)) ||
		    ((arg & TIOCM_CD)  && (changed & MSR_STATUS_LINE_DCD)) ||
		    ((arg & TIOCM_CTS) && (changed & MSR_STATUS_LINE_CTS)))
			return 0;

		prevstatus = status;
	}
	/* NOTREACHED */
	return 0;
}