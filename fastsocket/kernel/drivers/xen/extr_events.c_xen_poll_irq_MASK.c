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
struct sched_poll {int nr_ports; int /*<<< orphan*/  ports; scalar_t__ timeout; } ;
typedef  int /*<<< orphan*/  evtchn_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sched_poll*) ; 
 int /*<<< orphan*/  SCHEDOP_poll ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(int irq)
{
	evtchn_port_t evtchn = FUNC3(irq);

	if (FUNC2(evtchn)) {
		struct sched_poll poll;

		poll.nr_ports = 1;
		poll.timeout = 0;
		FUNC4(poll.ports, &evtchn);

		if (FUNC1(SCHEDOP_poll, &poll) != 0)
			FUNC0();
	}
}