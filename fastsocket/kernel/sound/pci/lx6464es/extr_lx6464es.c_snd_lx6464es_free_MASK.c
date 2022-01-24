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
struct lx6464es {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  port_plx_remapped; int /*<<< orphan*/  port_dsp_bar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC4 (struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct lx6464es *chip)
{
	FUNC7("->snd_lx6464es_free\n");

	FUNC4(chip);

	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);

	FUNC2(chip->port_dsp_bar);
	FUNC1(chip->port_plx_remapped);

	FUNC6(chip->pci);
	FUNC5(chip->pci);

	FUNC3(chip);

	return 0;
}