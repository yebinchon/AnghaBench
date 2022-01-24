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
struct net2280 {int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  irqstat0; int /*<<< orphan*/  irqstat1; } ;

/* Variables and functions */
 int INTA_ASSERTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct net2280*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net2280*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5 (int irq, void *_dev)
{
	struct net2280		*dev = _dev;

	/* shared interrupt, not ours */
	if (!(FUNC2(&dev->regs->irqstat0) & (1 << INTA_ASSERTED)))
		return IRQ_NONE;

	FUNC3 (&dev->lock);

	/* handle disconnect, dma, and more */
	FUNC1 (dev, FUNC2 (&dev->regs->irqstat1));

	/* control requests and PIO */
	FUNC0 (dev, FUNC2 (&dev->regs->irqstat0));

	FUNC4 (&dev->lock);

	return IRQ_HANDLED;
}