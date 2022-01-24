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
struct TYPE_4__ {unsigned int cpu; } ;
struct TYPE_3__ {int /*<<< orphan*/  affinity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int* evtchn_to_irq ; 
 TYPE_2__* irq_info ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned int chn, unsigned int cpu)
{
	int irq = evtchn_to_irq[chn];

	FUNC0(irq == -1);
#ifdef CONFIG_SMP
	cpumask_copy(irq_to_desc(irq)->affinity, cpumask_of(cpu));
#endif

	FUNC1(chn, FUNC2(FUNC3(irq)));
	FUNC7(chn, FUNC2(cpu));

	irq_info[irq].cpu = cpu;
}