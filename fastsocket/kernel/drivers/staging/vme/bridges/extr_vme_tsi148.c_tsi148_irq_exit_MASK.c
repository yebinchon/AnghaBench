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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TSI148_LCSR_INTC ; 
 scalar_t__ TSI148_LCSR_INTEN ; 
 scalar_t__ TSI148_LCSR_INTEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 TYPE_1__* tsi148_bridge ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	/* Turn off interrupts */
	FUNC1(0x0, tsi148_bridge->base + TSI148_LCSR_INTEO);
	FUNC1(0x0, tsi148_bridge->base + TSI148_LCSR_INTEN);

	/* Clear all interrupts */
	FUNC1(0xFFFFFFFF, tsi148_bridge->base + TSI148_LCSR_INTC);

	/* Detach interrupt handler */
	FUNC0(pdev->irq, pdev);
}