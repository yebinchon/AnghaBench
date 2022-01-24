#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ area; } ;
struct azx {int init_failed; int num_streams; scalar_t__ irq; scalar_t__ fw; struct azx* azx_dev; int /*<<< orphan*/  pci; scalar_t__ region_requested; TYPE_1__ posbuf; TYPE_1__ rb; TYPE_1__ bdl; scalar_t__ remap_addr; scalar_t__ msi; scalar_t__ initialized; scalar_t__ vga_switcheroo_registered; scalar_t__ bus; scalar_t__ disabled; int /*<<< orphan*/  probe_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*) ; 
 int /*<<< orphan*/  FUNC3 (struct azx*) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*,struct azx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct azx*) ; 
 int /*<<< orphan*/  FUNC9 (struct azx*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (struct azx*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct azx *chip)
{
	int i;

	FUNC1(chip);

	FUNC2(chip);

	chip->init_failed = 1; /* to be sure */
	FUNC5(&chip->probe_wait);

	if (FUNC16(chip)) {
		if (chip->disabled && chip->bus)
			FUNC15(chip->bus);
		if (chip->vga_switcheroo_registered)
			FUNC17(chip->pci);
	}

	if (chip->initialized) {
		FUNC0(chip);
		for (i = 0; i < chip->num_streams; i++)
			FUNC4(chip, &chip->azx_dev[i]);
		FUNC3(chip);
	}

	if (chip->irq >= 0)
		FUNC6(chip->irq, (void*)chip);
	if (chip->msi)
		FUNC11(chip->pci);
	if (chip->remap_addr)
		FUNC7(chip->remap_addr);

	if (chip->azx_dev) {
		for (i = 0; i < chip->num_streams; i++)
			if (chip->azx_dev[i].bdl.area) {
				FUNC9(chip, &chip->azx_dev[i].bdl, false);
				FUNC14(&chip->azx_dev[i].bdl);
			}
	}
	if (chip->rb.area) {
		FUNC9(chip, &chip->rb, false);
		FUNC14(&chip->rb);
	}
	if (chip->posbuf.area) {
		FUNC9(chip, &chip->posbuf, false);
		FUNC14(&chip->posbuf);
	}
	if (chip->region_requested)
		FUNC12(chip->pci);
	FUNC10(chip->pci);
	FUNC8(chip->azx_dev);
#ifdef CONFIG_SND_HDA_PATCH_LOADER
	if (chip->fw)
		release_firmware(chip->fw);
#endif
	FUNC8(chip);

	return 0;
}