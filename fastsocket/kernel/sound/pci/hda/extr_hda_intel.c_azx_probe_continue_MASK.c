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
struct azx {int dev_index; int running; int init_failed; int /*<<< orphan*/  card; int /*<<< orphan*/  bus; TYPE_1__* fw; int /*<<< orphan*/  beep_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx*) ; 
 int FUNC1 (struct azx*) ; 
 int FUNC2 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct azx*) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*) ; 
 int /*<<< orphan*/ * beep_mode ; 
 int /*<<< orphan*/ * model ; 
 int /*<<< orphan*/  FUNC5 (struct azx*) ; 
 int* probe_only ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct azx *chip)
{
	int dev = chip->dev_index;
	int err;

#ifdef CONFIG_SND_HDA_INPUT_BEEP
	chip->beep_mode = beep_mode[dev];
#endif

	/* create codec instances */
	err = FUNC2(chip, model[dev]);
	if (err < 0)
		goto out_free;
#ifdef CONFIG_SND_HDA_PATCH_LOADER
	if (chip->fw) {
		err = snd_hda_load_patch(chip->bus, chip->fw->size,
					 chip->fw->data);
		if (err < 0)
			goto out_free;
#ifndef CONFIG_PM
		release_firmware(chip->fw); /* no longer needed */
		chip->fw = NULL;
#endif
	}
#endif
	if ((probe_only[dev] & 1) == 0) {
		err = FUNC1(chip);
		if (err < 0)
			goto out_free;
	}

	/* create PCM streams */
	err = FUNC8(chip->bus);
	if (err < 0)
		goto out_free;

	/* create mixer controls */
	err = FUNC3(chip);
	if (err < 0)
		goto out_free;

	err = FUNC7(chip->card);
	if (err < 0)
		goto out_free;

	chip->running = 1;
	FUNC5(chip);
	FUNC4(chip);
	FUNC0(chip);

	return 0;

out_free:
	chip->init_failed = 1;
	return err;
}