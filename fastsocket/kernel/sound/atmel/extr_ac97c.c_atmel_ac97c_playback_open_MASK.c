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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {unsigned long long formats; scalar_t__ rate_max; scalar_t__ rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct atmel_ac97c {int cur_format; struct snd_pcm_substream* playback_substream; scalar_t__ cur_rate; int /*<<< orphan*/  opened; } ;

/* Variables and functions */
 TYPE_1__ atmel_ac97c_hw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opened_mutex ; 
 struct atmel_ac97c* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct atmel_ac97c *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC0(&opened_mutex);
	chip->opened++;
	runtime->hw = atmel_ac97c_hw;
	if (chip->cur_rate) {
		runtime->hw.rate_min = chip->cur_rate;
		runtime->hw.rate_max = chip->cur_rate;
	}
	if (chip->cur_format)
		runtime->hw.formats = (1ULL << chip->cur_format);
	FUNC1(&opened_mutex);
	chip->playback_substream = substream;
	return 0;
}