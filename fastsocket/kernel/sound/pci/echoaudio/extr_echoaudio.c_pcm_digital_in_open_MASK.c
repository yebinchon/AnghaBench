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
struct snd_pcm_substream {int number; int /*<<< orphan*/  runtime; } ;
struct echoaudio {scalar_t__ digital_mode; int /*<<< orphan*/  mode_mutex; scalar_t__ can_set_rate; scalar_t__ rate_set; int /*<<< orphan*/  opencount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DIGITAL_MODE_ADAT ; 
 int ECHOCARD_HAS_ADAT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw_rule_capture_channels_by_format ; 
 int /*<<< orphan*/  hw_rule_capture_format_by_channels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct echoaudio*) ; 
 int FUNC6 (struct snd_pcm_substream*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct echoaudio* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct echoaudio *chip = FUNC8(substream);
	int err, max_channels;

	FUNC0(("pcm_digital_in_open\n"));
	max_channels = FUNC5(chip) - substream->number;
	FUNC3(&chip->mode_mutex);
	if (chip->digital_mode == DIGITAL_MODE_ADAT)
		err = FUNC6(substream, max_channels);
	else	/* If the card has ADAT, subtract the 6 channels
		 * that S/PDIF doesn't have
		 */
		err = FUNC6(substream, max_channels - ECHOCARD_HAS_ADAT);

	if (err < 0)
		goto din_exit;

	if ((err = FUNC7(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_CHANNELS,
				       hw_rule_capture_channels_by_format, NULL,
				       SNDRV_PCM_HW_PARAM_FORMAT, -1)) < 0)
		goto din_exit;
	if ((err = FUNC7(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_FORMAT,
				       hw_rule_capture_format_by_channels, NULL,
				       SNDRV_PCM_HW_PARAM_CHANNELS, -1)) < 0)
		goto din_exit;

	FUNC1(&chip->opencount);
	if (FUNC2(&chip->opencount) > 1 && chip->rate_set)
		chip->can_set_rate=0;

din_exit:
	FUNC4(&chip->mode_mutex);
	return err;
}