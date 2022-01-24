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
struct irq_desc {int /*<<< orphan*/ * affinity_notify; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_desc*) ; 
 struct irq_desc* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(unsigned int irq, void *dev_id)
{
	struct irq_desc *desc = FUNC4(irq);

	if (!desc)
		return;

#ifdef CONFIG_SMP
	if (WARN_ON(desc->affinity_notify))
		desc->affinity_notify = NULL;
#endif

	FUNC2(irq, desc);
	FUNC5(FUNC1(irq, dev_id));
	FUNC3(irq, desc);
}