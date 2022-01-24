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
struct irq_desc {int status; TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask ) (int) ;int /*<<< orphan*/  (* mask ) (int) ;} ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_MOVE_PENDING ; 
 struct irq_desc* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(int irq)
{
	struct irq_desc *desc = FUNC0(irq);

	if (FUNC1(!(desc->status & IRQ_MOVE_PENDING)))
		return;

	if (FUNC5(desc->status & IRQ_DISABLED))
		return;

	desc->chip->mask(irq);
	FUNC2(irq);
	desc->chip->unmask(irq);
}