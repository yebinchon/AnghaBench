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
struct es1938 {scalar_t__ irq; int /*<<< orphan*/  pci; scalar_t__ rmidi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESSSB_IREG_MPU401CONTROL ; 
 int /*<<< orphan*/  IRQCONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct es1938*) ; 
 int /*<<< orphan*/  FUNC2 (struct es1938*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct es1938*) ; 
 int /*<<< orphan*/  FUNC7 (struct es1938*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct es1938 *chip)
{
	/* disable irqs */
	FUNC3(0x00, FUNC0(chip, IRQCONTROL));
	if (chip->rmidi)
		FUNC7(chip, ESSSB_IREG_MPU401CONTROL, 0x40, 0);

	FUNC6(chip);

	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);
	FUNC5(chip->pci);
	FUNC4(chip->pci);
	FUNC2(chip);
	return 0;
}