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
struct hw {int irq; long mem_base; int /*<<< orphan*/  pci; scalar_t__ io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct hw*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hw *hw)
{
	if (hw->irq >= 0)
		FUNC0(hw->irq, hw);

	hw->irq	= -1;

	if (hw->mem_base)
		FUNC1((void *)hw->mem_base);

	hw->mem_base = (unsigned long)NULL;

	if (hw->io_base)
		FUNC3(hw->pci);

	hw->io_base = 0;

	FUNC2(hw->pci);

	return 0;
}