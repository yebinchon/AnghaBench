#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct evtchn_close {int port; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EVTCHNOP_close ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct evtchn_close*) ; 
#define  IRQT_IPI 129 
 scalar_t__ IRQT_UNBOUND ; 
#define  IRQT_VIRQ 128 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int* evtchn_to_irq ; 
 size_t FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  ipi_to_irq ; 
 TYPE_1__* irq_info ; 
 int /*<<< orphan*/  irq_mapping_update_lock ; 
 TYPE_1__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (unsigned int) ; 
 size_t FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  virq_to_irq ; 

__attribute__((used)) static void FUNC14(unsigned int irq)
{
	struct evtchn_close close;
	int evtchn = FUNC6(irq);

	FUNC9(&irq_mapping_update_lock);

	if (FUNC2(evtchn)) {
		close.port = evtchn;
		if (FUNC1(EVTCHNOP_close, &close) != 0)
			FUNC0();

		switch (FUNC12(irq)) {
		case IRQT_VIRQ:
			FUNC11(virq_to_irq, FUNC4(evtchn))
				[FUNC13(irq)] = -1;
			break;
		case IRQT_IPI:
			FUNC11(ipi_to_irq, FUNC4(evtchn))
				[FUNC7(irq)] = -1;
			break;
		default:
			break;
		}

		/* Closed ports are implicitly re-bound to VCPU0. */
		FUNC3(evtchn, 0);

		evtchn_to_irq[evtchn] = -1;
	}

	if (irq_info[irq].type != IRQT_UNBOUND) {
		irq_info[irq] = FUNC8();

		FUNC5(irq);
	}

	FUNC10(&irq_mapping_update_lock);
}