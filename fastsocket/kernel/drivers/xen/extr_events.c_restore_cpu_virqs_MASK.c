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
struct evtchn_bind_virq {int virq; unsigned int vcpu; int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EVTCHNOP_bind_virq ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct evtchn_bind_virq*) ; 
 int NR_VIRQS ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int* evtchn_to_irq ; 
 int /*<<< orphan*/ * irq_info ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  virq_to_irq ; 

__attribute__((used)) static void FUNC7(unsigned int cpu)
{
	struct evtchn_bind_virq bind_virq;
	int virq, irq, evtchn;

	for (virq = 0; virq < NR_VIRQS; virq++) {
		if ((irq = FUNC5(virq_to_irq, cpu)[virq]) == -1)
			continue;

		FUNC1(FUNC6(irq) != virq);

		/* Get a new binding from Xen. */
		bind_virq.virq = virq;
		bind_virq.vcpu = cpu;
		if (FUNC2(EVTCHNOP_bind_virq,
						&bind_virq) != 0)
			FUNC0();
		evtchn = bind_virq.port;

		/* Record the new mapping. */
		evtchn_to_irq[evtchn] = irq;
		irq_info[irq] = FUNC4(evtchn, virq);
		FUNC3(evtchn, cpu);
	}
}