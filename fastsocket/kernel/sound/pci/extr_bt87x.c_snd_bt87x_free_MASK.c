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
struct snd_bt87x {scalar_t__ irq; int /*<<< orphan*/  pci; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_bt87x*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_bt87x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_bt87x*) ; 

__attribute__((used)) static int FUNC6(struct snd_bt87x *chip)
{
	if (chip->mmio)
		FUNC5(chip);
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	if (chip->mmio)
		FUNC1(chip->mmio);
	FUNC4(chip->pci);
	FUNC3(chip->pci);
	FUNC2(chip);
	return 0;
}