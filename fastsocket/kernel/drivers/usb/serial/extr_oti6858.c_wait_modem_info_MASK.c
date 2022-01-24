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
struct usb_serial_port {int dummy; } ;
struct TYPE_2__ {unsigned int pin_state; } ;
struct oti6858_private {int /*<<< orphan*/  lock; TYPE_1__ status; int /*<<< orphan*/  intr_wait; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 unsigned int PIN_CTS ; 
 unsigned int PIN_DCD ; 
 unsigned int PIN_DSR ; 
 unsigned int PIN_MASK ; 
 unsigned int PIN_RI ; 
 unsigned int TIOCM_CD ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_RNG ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct oti6858_private* FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port, unsigned int arg)
{
	struct oti6858_private *priv = FUNC3(port);
	unsigned long flags;
	unsigned int prev, status;
	unsigned int changed;

	FUNC1(&priv->lock, flags);
	prev = priv->status.pin_state;
	FUNC2(&priv->lock, flags);

	while (1) {
		FUNC4(priv->intr_wait,
					priv->status.pin_state != prev);
		if (FUNC0(current))
			return -ERESTARTSYS;

		FUNC1(&priv->lock, flags);
		status = priv->status.pin_state & PIN_MASK;
		FUNC2(&priv->lock, flags);

		changed = prev ^ status;
		/* FIXME: check if this is correct (active high/low) */
		if (((arg & TIOCM_RNG) && (changed & PIN_RI)) ||
		    ((arg & TIOCM_DSR) && (changed & PIN_DSR)) ||
		    ((arg & TIOCM_CD)  && (changed & PIN_DCD)) ||
		    ((arg & TIOCM_CTS) && (changed & PIN_CTS)))
			return 0;
		prev = status;
	}

	/* NOTREACHED */
	return 0;
}