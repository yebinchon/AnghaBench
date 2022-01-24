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
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {void* base; } ;

/* Variables and functions */
 int CA91CX42_LINT_DMA ; 
 int CA91CX42_LINT_LERR ; 
 int CA91CX42_LINT_LM0 ; 
 int CA91CX42_LINT_LM1 ; 
 int CA91CX42_LINT_LM2 ; 
 int CA91CX42_LINT_LM3 ; 
 int CA91CX42_LINT_MBOX ; 
 int CA91CX42_LINT_SW_IACK ; 
 int CA91CX42_LINT_VERR ; 
 int CA91CX42_LINT_VIRQ1 ; 
 int CA91CX42_LINT_VIRQ2 ; 
 int CA91CX42_LINT_VIRQ3 ; 
 int CA91CX42_LINT_VIRQ4 ; 
 int CA91CX42_LINT_VIRQ5 ; 
 int CA91CX42_LINT_VIRQ6 ; 
 int CA91CX42_LINT_VIRQ7 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int LINT_EN ; 
 int LINT_STAT ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 
 int FUNC6 (int) ; 
 TYPE_1__* ca91cx42_bridge ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int,void*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	u32 stat, enable, serviced = 0;

	if (dev_id != ca91cx42_bridge->base)
		return IRQ_NONE;

	enable = FUNC7(ca91cx42_bridge->base + LINT_EN);
	stat = FUNC7(ca91cx42_bridge->base + LINT_STAT);

	/* Only look at unmasked interrupts */
	stat &= enable;

	if (FUNC9(!stat))
		return IRQ_NONE;

	if (stat & CA91CX42_LINT_DMA)
		serviced |= FUNC0();
	if (stat & (CA91CX42_LINT_LM0 | CA91CX42_LINT_LM1 | CA91CX42_LINT_LM2 |
			CA91CX42_LINT_LM3))
		serviced |= FUNC3(stat);
	if (stat & CA91CX42_LINT_MBOX)
		serviced |= FUNC4(stat);
	if (stat & CA91CX42_LINT_SW_IACK)
		serviced |= FUNC1();
	if (stat & CA91CX42_LINT_VERR)
		serviced |= FUNC5();
	if (stat & CA91CX42_LINT_LERR)
		serviced |= FUNC2();
	if (stat & (CA91CX42_LINT_VIRQ1 | CA91CX42_LINT_VIRQ2 |
			CA91CX42_LINT_VIRQ3 | CA91CX42_LINT_VIRQ4 |
			CA91CX42_LINT_VIRQ5 | CA91CX42_LINT_VIRQ6 |
			CA91CX42_LINT_VIRQ7))
		serviced |= FUNC6(stat);

	/* Clear serviced interrupts */
	FUNC8(stat, ca91cx42_bridge->base + LINT_STAT);

	return IRQ_HANDLED;
}