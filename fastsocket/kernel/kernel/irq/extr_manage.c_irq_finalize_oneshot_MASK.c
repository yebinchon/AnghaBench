#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_desc {int status; int /*<<< orphan*/  lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask ) (unsigned int) ;} ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_MASKED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int irq, struct irq_desc *desc)
{
	FUNC0(irq, desc);
	FUNC2(&desc->lock);
	if (!(desc->status & IRQ_DISABLED) && (desc->status & IRQ_MASKED)) {
		desc->status &= ~IRQ_MASKED;
		desc->chip->unmask(irq);
	}
	FUNC3(&desc->lock);
	FUNC1(irq, desc);
}