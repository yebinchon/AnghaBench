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
struct evtchn_bind_vcpu {int port; unsigned int vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_bind_vcpu ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct evtchn_bind_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  xen_have_vector_callback ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(unsigned irq, unsigned tcpu)
{
	struct evtchn_bind_vcpu bind_vcpu;
	int evtchn = FUNC3(irq);

	/* events delivered via platform PCI interrupts are always
	 * routed to vcpu 0 */
	if (!FUNC1(evtchn) ||
		(FUNC4() && !xen_have_vector_callback))
		return -1;

	/* Send future instances of this interrupt to other vcpu. */
	bind_vcpu.port = evtchn;
	bind_vcpu.vcpu = tcpu;

	/*
	 * If this fails, it usually just indicates that we're dealing with a
	 * virq or IPI channel, which don't actually need to be rebound. Ignore
	 * it, but don't do the xenlinux-level rebind in that case.
	 */
	if (FUNC0(EVTCHNOP_bind_vcpu, &bind_vcpu) >= 0)
		FUNC2(evtchn, tcpu);

	return 0;
}