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
struct udc {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cfg; int /*<<< orphan*/  irqsts; int /*<<< orphan*/  ep_irqsts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udc*,char*) ; 
 int /*<<< orphan*/  UDC_DEVCFG_SOFTRESET ; 
 int /*<<< orphan*/  UDC_DEV_MSK_DISABLE ; 
 int /*<<< orphan*/  UDC_EPINT_MSK_DISABLE_ALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  udc_irq_spinlock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct udc *dev)
{
	unsigned long	flags;

	FUNC1(dev, "Soft reset\n");
	/*
	 * reset possible waiting interrupts, because int.
	 * status is lost after soft reset,
	 * ep int. status reset
	 */
	FUNC5(UDC_EPINT_MSK_DISABLE_ALL, &dev->regs->ep_irqsts);
	/* device int. status reset */
	FUNC5(UDC_DEV_MSK_DISABLE, &dev->regs->irqsts);

	FUNC3(&udc_irq_spinlock, flags);
	FUNC5(FUNC0(UDC_DEVCFG_SOFTRESET), &dev->regs->cfg);
	FUNC2(&dev->regs->cfg);
	FUNC4(&udc_irq_spinlock, flags);

}