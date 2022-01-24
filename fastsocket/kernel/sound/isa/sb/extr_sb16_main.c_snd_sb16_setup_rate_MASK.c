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
struct snd_sb {int mode; unsigned short locked_rate; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 unsigned short SB_DSP_SAMPLE_RATE_IN ; 
 unsigned short SB_DSP_SAMPLE_RATE_OUT ; 
 int SB_MODE_CAPTURE_16 ; 
 int SB_MODE_PLAYBACK_16 ; 
 int SB_RATE_LOCK ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_sb *chip,
				unsigned short rate,
				int channel)
{
	unsigned long flags;

	FUNC3(&chip->reg_lock, flags);
	if (chip->mode & (channel == SNDRV_PCM_STREAM_PLAYBACK ? SB_MODE_PLAYBACK_16 : SB_MODE_CAPTURE_16))
		FUNC0(chip);
	else
		FUNC1(chip);
	if (!(chip->mode & SB_RATE_LOCK)) {
		chip->locked_rate = rate;
		FUNC2(chip, SB_DSP_SAMPLE_RATE_IN);
		FUNC2(chip, rate >> 8);
		FUNC2(chip, rate & 0xff);
		FUNC2(chip, SB_DSP_SAMPLE_RATE_OUT);
		FUNC2(chip, rate >> 8);
		FUNC2(chip, rate & 0xff);
	}
	FUNC4(&chip->reg_lock, flags);
}