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
 int /*<<< orphan*/  hw_rule_capture_channels_by_format ; 
 int /*<<< orphan*/  hw_rule_capture_format_by_channels ; 
 scalar_t__ FUNC4 (struct echoaudio*) ; 
 int FUNC5 (struct snd_pcm_substream*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct echoaudio* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct echoaudio *chip = FUNC7(substream);
	int err;

	FUNC0(("pcm_analog_in_open\n"));
	if ((err = FUNC5(substream, FUNC4(chip) -
			    substream->number)) < 0)
		return err;
	if ((err = FUNC6(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_CHANNELS,
				       hw_rule_capture_channels_by_format, NULL,
				       SNDRV_PCM_HW_PARAM_FORMAT, -1)) < 0)
		return err;
	if ((err = FUNC6(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_FORMAT,
				       hw_rule_capture_format_by_channels, NULL,
				       SNDRV_PCM_HW_PARAM_CHANNELS, -1)) < 0)
		return err;
	FUNC2(&chip->opencount);
	if (FUNC3(&chip->opencount) > 1 && chip->rate_set)
		chip->can_set_rate=0;
	FUNC1(("pcm_analog_in_open  cs=%d  oc=%d  r=%d\n",
		chip->can_set_rate, FUNC3(&chip->opencount),
		chip->sample_rate));
	return 0;
}