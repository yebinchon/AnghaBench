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
struct TYPE_2__ {scalar_t__ area; } ;
struct emu10k1x {scalar_t__ irq; int /*<<< orphan*/  pci; TYPE_1__ dma_buffer; int /*<<< orphan*/  res_port; scalar_t__ port; } ;

/* Variables and functions */
 scalar_t__ HCFG ; 
 int /*<<< orphan*/  HCFG_LOCKSOUNDCACHE ; 
 scalar_t__ INTE ; 
 int /*<<< orphan*/  TRIGGER_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct emu10k1x*) ; 
 int /*<<< orphan*/  FUNC1 (struct emu10k1x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct emu10k1x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct emu10k1x *chip)
{
	FUNC6(chip, TRIGGER_CHANNEL, 0, 0);
	// disable interrupts
	FUNC2(0, chip->port + INTE);
	// disable audio
	FUNC2(HCFG_LOCKSOUNDCACHE, chip->port + HCFG);

	/* release the irq */
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);

	// release the i/o port
	FUNC4(chip->res_port);

	// release the DMA
	if (chip->dma_buffer.area) {
		FUNC5(&chip->dma_buffer);
	}

	FUNC3(chip->pci);

	// release the data
	FUNC1(chip);
	return 0;
}