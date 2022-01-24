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
 scalar_t__ LINT_EN ; 
 scalar_t__ LINT_STAT ; 
 scalar_t__ VINT_EN ; 
 TYPE_1__* ca91cx42_bridge ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	/* Disable interrupts from PCI to VME */
	FUNC1(0, ca91cx42_bridge->base + VINT_EN);

	/* Disable PCI interrupts */
	FUNC1(0, ca91cx42_bridge->base + LINT_EN);
	/* Clear Any Pending PCI Interrupts */
	FUNC1(0x00FFFFFF, ca91cx42_bridge->base + LINT_STAT);

	FUNC0(pdev->irq, pdev);
}