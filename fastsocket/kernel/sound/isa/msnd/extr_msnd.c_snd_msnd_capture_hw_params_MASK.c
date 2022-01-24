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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_msnd {int /*<<< orphan*/  capture_sample_rate; int /*<<< orphan*/  capture_channels; int /*<<< orphan*/  capture_sample_size; void* mappedbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAQDS__size ; 
 int DAQDS_wChannels ; 
 int DAQDS_wSampleRate ; 
 int DAQDS_wSampleSize ; 
 int DARQ_DATA_BUFF ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct snd_msnd* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *params)
{
	int		i;
	struct snd_msnd *chip = FUNC4(substream);
	void		*pDAQ = chip->mappedbase + DARQ_DATA_BUFF;

	chip->capture_sample_size = FUNC3(FUNC1(params));
	chip->capture_channels = FUNC0(params);
	chip->capture_sample_rate = FUNC2(params);

	for (i = 0; i < 3; ++i, pDAQ += DAQDS__size) {
		FUNC5(chip->capture_sample_size, pDAQ + DAQDS_wSampleSize);
		FUNC5(chip->capture_channels, pDAQ + DAQDS_wChannels);
		FUNC5(chip->capture_sample_rate, pDAQ + DAQDS_wSampleRate);
	}
	return 0;
}