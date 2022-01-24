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
struct vcpu_info {int evtchn_upcall_pending; int /*<<< orphan*/  evtchn_pending_sel; } ;
struct shared_info {int /*<<< orphan*/ * evtchn_pending; int /*<<< orphan*/ * evtchn_mask; } ;
struct evtchn_unmask {int port; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EVTCHNOP_unmask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct evtchn_unmask*) ; 
 struct shared_info* HYPERVISOR_shared_info ; 
 struct vcpu_info* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  xen_vcpu ; 

__attribute__((used)) static void FUNC11(int port)
{
	struct shared_info *s = HYPERVISOR_shared_info;
	unsigned int cpu = FUNC4();

	FUNC0(!FUNC5());

	/* Slow path (hypercall) if this is a non-local port. */
	if (FUNC10(cpu != FUNC3(port))) {
		struct evtchn_unmask unmask = { .port = port };
		(void)FUNC1(EVTCHNOP_unmask, &unmask);
	} else {
		struct vcpu_info *vcpu_info = FUNC2(xen_vcpu);

		FUNC7(port, &s->evtchn_mask[0]);

		/*
		 * The following is basically the equivalent of
		 * 'hw_resend_irq'. Just like a real IO-APIC we 'lose
		 * the interrupt edge' if the channel is masked.
		 */
		if (FUNC9(port, &s->evtchn_pending[0]) &&
		    !FUNC8(port / BITS_PER_LONG,
					   &vcpu_info->evtchn_pending_sel))
			vcpu_info->evtchn_upcall_pending = 1;
	}

	FUNC6();
}