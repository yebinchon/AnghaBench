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
typedef  int /*<<< orphan*/  wait_queue_t ;
struct tty_struct {int /*<<< orphan*/  write_wait; } ;
struct edgeport_port {int baud_rate; TYPE_2__* port; int /*<<< orphan*/  ep_lock; int /*<<< orphan*/  ep_out_buf; } ;
struct TYPE_4__ {TYPE_1__* serial; int /*<<< orphan*/  port; } ;
struct TYPE_3__ {int /*<<< orphan*/  interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EDGE_CLOSING_WAIT ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 struct tty_struct* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct edgeport_port*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct edgeport_port *port, unsigned long timeout,
								int flush)
{
	int baud_rate;
	struct tty_struct *tty = FUNC14(&port->port->port);
	wait_queue_t wait;
	unsigned long flags;

	if (!tty)
		return;

	if (!timeout)
		timeout = (HZ * EDGE_CLOSING_WAIT)/100;

	/* wait for data to drain from the buffer */
	FUNC11(&port->ep_lock, flags);
	FUNC4(&wait, current);
	FUNC1(&tty->write_wait, &wait);
	for (;;) {
		FUNC9(TASK_INTERRUPTIBLE);
		if (FUNC3(port->ep_out_buf) == 0
		|| timeout == 0 || FUNC10(current)
		|| !FUNC16(port->port->serial->interface))
			/* disconnect */
			break;
		FUNC12(&port->ep_lock, flags);
		timeout = FUNC8(timeout);
		FUNC11(&port->ep_lock, flags);
	}
	FUNC9(TASK_RUNNING);
	FUNC7(&tty->write_wait, &wait);
	if (flush)
		FUNC2(port->ep_out_buf);
	FUNC12(&port->ep_lock, flags);
	FUNC13(tty);

	/* wait for data to drain from the device */
	timeout += jiffies;
	while ((long)(jiffies - timeout) < 0 && !FUNC10(current)
	&& FUNC16(port->port->serial->interface)) {
		/* not disconnected */
		if (!FUNC15(port))
			break;
		FUNC6(10);
	}

	/* disconnected */
	if (!FUNC16(port->port->serial->interface))
		return;

	/* wait one more character time, based on baud rate */
	/* (tx_active doesn't seem to wait for the last byte) */
	baud_rate = port->baud_rate;
	if (baud_rate == 0)
		baud_rate = 50;
	FUNC6(FUNC5(1, FUNC0(10000, baud_rate)));
}