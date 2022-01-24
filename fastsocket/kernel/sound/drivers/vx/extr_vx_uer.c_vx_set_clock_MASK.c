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
struct vx_core {int chip_status; scalar_t__ clock_mode; scalar_t__ audio_source; scalar_t__ clock_source; unsigned int freq; } ;

/* Variables and functions */
 scalar_t__ INTERNAL_QUARTZ ; 
 scalar_t__ UER_SYNC ; 
 scalar_t__ VX_AUDIO_SRC_DIGITAL ; 
 scalar_t__ VX_CLOCK_MODE_AUTO ; 
 scalar_t__ VX_CLOCK_MODE_EXTERNAL ; 
 scalar_t__ VX_CLOCK_MODE_INTERNAL ; 
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct vx_core*) ; 

int FUNC6(struct vx_core *chip, unsigned int freq)
{
	int src_changed = 0;

	if (chip->chip_status & VX_STAT_IS_STALE)
		return 0;

	/* change the audio source if possible */
	FUNC5(chip);

	if (chip->clock_mode == VX_CLOCK_MODE_EXTERNAL ||
	    (chip->clock_mode == VX_CLOCK_MODE_AUTO &&
	     chip->audio_source == VX_AUDIO_SRC_DIGITAL)) {
		if (chip->clock_source != UER_SYNC) {
			FUNC1(chip, UER_SYNC);
			FUNC0(6);
			src_changed = 1;
		}
	} else if (chip->clock_mode == VX_CLOCK_MODE_INTERNAL ||
		   (chip->clock_mode == VX_CLOCK_MODE_AUTO &&
		    chip->audio_source != VX_AUDIO_SRC_DIGITAL)) {
		if (chip->clock_source != INTERNAL_QUARTZ) {
			FUNC1(chip, INTERNAL_QUARTZ);
			src_changed = 1;
		}
		if (chip->freq == freq)
			return 0;
		FUNC4(chip, freq);
		if (src_changed)
			FUNC3(chip);
	}
	if (chip->freq == freq)
		return 0;
	chip->freq = freq;
	FUNC2(chip, 1);
	return 0;
}