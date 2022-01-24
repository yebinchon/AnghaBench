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
struct es1938 {int ddma_port; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMACLEAR ; 
 int /*<<< orphan*/  IRQCONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SL_PCI_CONFIG ; 
 int /*<<< orphan*/  SL_PCI_DDMACONTROL ; 
 int /*<<< orphan*/  SL_PCI_LEGACYCONTROL ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct es1938*) ; 

__attribute__((used)) static void FUNC7(struct es1938 *chip)
{
	/* reset chip */
	FUNC6(chip);

	/* configure native mode */

	/* enable bus master */
	FUNC3(chip->pci);

	/* disable legacy audio */
	FUNC5(chip->pci, SL_PCI_LEGACYCONTROL, 0x805f);

	/* set DDMA base */
	FUNC5(chip->pci, SL_PCI_DDMACONTROL, chip->ddma_port | 1);

	/* set DMA/IRQ policy */
	FUNC4(chip->pci, SL_PCI_CONFIG, 0);

	/* enable Audio 1, Audio 2, MPU401 IRQ and HW volume IRQ*/
	FUNC2(0xf0, FUNC1(chip, IRQCONTROL));

	/* reset DMA */
	FUNC2(0, FUNC0(chip, DMACLEAR));
}