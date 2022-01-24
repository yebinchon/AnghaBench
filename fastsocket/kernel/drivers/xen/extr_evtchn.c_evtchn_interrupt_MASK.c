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
struct per_user_data {scalar_t__ ring_prod; scalar_t__ ring_cons; unsigned int* ring; int ring_overflow; int /*<<< orphan*/  evtchn_async_queue; int /*<<< orphan*/  evtchn_wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ EVTCHN_RING_SIZE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct per_user_data** port_user ; 
 int /*<<< orphan*/  port_user_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

irqreturn_t FUNC7(int irq, void *data)
{
	unsigned int port = (unsigned long)data;
	struct per_user_data *u;

	FUNC3(&port_user_lock);

	u = port_user[port];

	FUNC1(irq);

	if ((u->ring_prod - u->ring_cons) < EVTCHN_RING_SIZE) {
		u->ring[FUNC0(u->ring_prod)] = port;
		FUNC6(); /* Ensure ring contents visible */
		if (u->ring_cons == u->ring_prod++) {
			FUNC5(&u->evtchn_wait);
			FUNC2(&u->evtchn_async_queue,
				    SIGIO, POLL_IN);
		}
	} else {
		u->ring_overflow = 1;
	}

	FUNC4(&port_user_lock);

	return IRQ_HANDLED;
}