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
struct evtchn_bind_ipi {unsigned int vcpu; int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EVTCHNOP_bind_ipi ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct evtchn_bind_ipi*) ; 
 int XEN_NR_IPIS ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int* evtchn_to_irq ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  ipi_to_irq ; 
 int /*<<< orphan*/ * irq_info ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int* FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC7(unsigned int cpu)
{
	struct evtchn_bind_ipi bind_ipi;
	int ipi, irq, evtchn;

	for (ipi = 0; ipi < XEN_NR_IPIS; ipi++) {
		if ((irq = FUNC6(ipi_to_irq, cpu)[ipi]) == -1)
			continue;

		FUNC1(FUNC4(irq) != ipi);

		/* Get a new binding from Xen. */
		bind_ipi.vcpu = cpu;
		if (FUNC2(EVTCHNOP_bind_ipi,
						&bind_ipi) != 0)
			FUNC0();
		evtchn = bind_ipi.port;

		/* Record the new mapping. */
		evtchn_to_irq[evtchn] = irq;
		irq_info[irq] = FUNC5(evtchn, ipi);
		FUNC3(evtchn, cpu);
	}
}