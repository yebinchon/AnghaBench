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
struct vx_core {int freq; int /*<<< orphan*/  uer_bits; TYPE_1__* ops; int /*<<< orphan*/  uer_detected; int /*<<< orphan*/  clock_mode; int /*<<< orphan*/  clock_source; int /*<<< orphan*/  audio_source; int /*<<< orphan*/  audio_source_target; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset_board ) (struct vx_core*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  INTERNAL_QUARTZ ; 
 int /*<<< orphan*/  SNDRV_PCM_DEFAULT_CON_SPDIF ; 
 int /*<<< orphan*/  VX_AUDIO_SRC_LINE ; 
 int /*<<< orphan*/  VX_CLOCK_MODE_AUTO ; 
 int /*<<< orphan*/  VX_UER_MODE_NOT_PRESENT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*,int) ; 
 scalar_t__ FUNC2 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC5 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vx_core*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC8 (struct vx_core*,int) ; 

__attribute__((used)) static void FUNC9(struct vx_core *chip, int cold_reset)
{
	if (FUNC0(!chip->ops->reset_board))
		return;

	/* current source, later sync'ed with target */
	chip->audio_source = VX_AUDIO_SRC_LINE;
	if (cold_reset) {
		chip->audio_source_target = chip->audio_source;
		chip->clock_source = INTERNAL_QUARTZ;
		chip->clock_mode = VX_CLOCK_MODE_AUTO;
		chip->freq = 48000;
		chip->uer_detected = VX_UER_MODE_NOT_PRESENT;
		chip->uer_bits = SNDRV_PCM_DEFAULT_CON_SPDIF;
	}

	chip->ops->reset_board(chip, cold_reset);

	FUNC3(chip, cold_reset);

	FUNC6(chip, chip->freq);

	/* Reset the DSP */
	FUNC4(chip);

	if (FUNC2(chip)) {
		/* Acknowledge any pending IRQ and reset the MEMIRQ flag. */
		FUNC7(chip);
		FUNC8(chip, 1);
	}

	/* init CBits */
	FUNC5(chip, chip->uer_bits);
}