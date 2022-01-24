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
struct irq_desc {TYPE_1__* chip; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* eoi ) (unsigned int) ;int /*<<< orphan*/  (* ack ) (unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  noirqdebug ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

void
FUNC5(unsigned int irq, struct irq_desc *desc)
{
	irqreturn_t action_ret;

	FUNC1(irq, desc);

	if (desc->chip->ack)
		desc->chip->ack(irq);

	action_ret = FUNC0(irq, desc->action);
	if (!noirqdebug)
		FUNC2(irq, desc, action_ret);

	if (desc->chip->eoi)
		desc->chip->eoi(irq);
}