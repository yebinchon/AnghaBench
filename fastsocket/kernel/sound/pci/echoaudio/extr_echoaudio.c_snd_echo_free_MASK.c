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
struct echoaudio {scalar_t__ irq; int /*<<< orphan*/  pci; scalar_t__ iores; scalar_t__ dsp_registers; int /*<<< orphan*/  commpage_dma_buf; scalar_t__ comm_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct echoaudio *chip)
{
	FUNC0(("Stop DSP...\n"));
	if (chip->comm_page)
		FUNC6(chip);
	FUNC0(("Stopped.\n"));

	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);

	if (chip->comm_page)
		FUNC7(&chip->commpage_dma_buf);

	if (chip->dsp_registers)
		FUNC2(chip->dsp_registers);

	if (chip->iores)
		FUNC5(chip->iores);

	FUNC0(("MMIO freed.\n"));

	FUNC4(chip->pci);

	/* release chip data */
	FUNC3(chip);
	FUNC0(("Chip freed.\n"));
	return 0;
}