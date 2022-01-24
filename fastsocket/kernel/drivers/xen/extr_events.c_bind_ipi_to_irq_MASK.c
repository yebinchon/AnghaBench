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
 int /*<<< orphan*/  EVTCHNOP_bind_ipi ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct evtchn_bind_ipi*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int* evtchn_to_irq ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  ipi_to_irq ; 
 int /*<<< orphan*/ * irq_info ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xen_percpu_chip ; 

__attribute__((used)) static int FUNC9(unsigned int ipi, unsigned int cpu)
{
	struct evtchn_bind_ipi bind_ipi;
	int evtchn, irq;

	FUNC5(&irq_mapping_update_lock);

	irq = FUNC7(ipi_to_irq, cpu)[ipi];

	if (irq == -1) {
		irq = FUNC3();
		if (irq < 0)
			goto out;

		FUNC8(irq, &xen_percpu_chip,
					      handle_percpu_irq, "ipi");

		bind_ipi.vcpu = cpu;
		if (FUNC1(EVTCHNOP_bind_ipi,
						&bind_ipi) != 0)
			FUNC0();
		evtchn = bind_ipi.port;

		evtchn_to_irq[evtchn] = irq;
		irq_info[irq] = FUNC4(evtchn, ipi);
		FUNC7(ipi_to_irq, cpu)[ipi] = irq;

		FUNC2(evtchn, cpu);
	}

 out:
	FUNC6(&irq_mapping_update_lock);
	return irq;
}