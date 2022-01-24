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
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*) ; 
 struct irq_desc* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(unsigned int irq)
{
	struct irq_desc *desc = FUNC3(irq);
	unsigned long flags;

	if (!desc)
		return;

	FUNC1(irq, desc);
	FUNC4(&desc->lock, flags);
	FUNC0(desc, irq, false);
	FUNC5(&desc->lock, flags);
	FUNC2(irq, desc);
}