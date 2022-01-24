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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; scalar_t__ number; } ;
struct echoaudio {int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  opencount; scalar_t__ can_set_rate; scalar_t__ rate_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw_rule_playback_channels_by_format ; 
 int /*<<< orphan*/  hw_rule_playback_format_by_channels ; 
 int FUNC4 (struct echoaudio*) ; 
 int FUNC5 (struct echoaudio*) ; 
 int FUNC6 (struct snd_pcm_substream*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct echoaudio* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct echoaudio *chip = FUNC8(substream);
	int max_channels, err;

#ifdef ECHOCARD_HAS_VMIXER
	max_channels = num_pipes_out(chip);
#else
	max_channels = FUNC4(chip);
#endif
	FUNC0(("pcm_analog_out_open\n"));
	if ((err = FUNC6(substream, max_channels - substream->number)) < 0)
		return err;
	if ((err = FUNC7(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_CHANNELS,
				       hw_rule_playback_channels_by_format,
				       NULL,
				       SNDRV_PCM_HW_PARAM_FORMAT, -1)) < 0)
		return err;
	if ((err = FUNC7(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_FORMAT,
				       hw_rule_playback_format_by_channels,
				       NULL,
				       SNDRV_PCM_HW_PARAM_CHANNELS, -1)) < 0)
		return err;
	FUNC2(&chip->opencount);
	if (FUNC3(&chip->opencount) > 1 && chip->rate_set)
		chip->can_set_rate=0;
	FUNC1(("pcm_analog_out_open  cs=%d  oc=%d  r=%d\n",
		chip->can_set_rate, FUNC3(&chip->opencount),
		chip->sample_rate));
	return 0;
}