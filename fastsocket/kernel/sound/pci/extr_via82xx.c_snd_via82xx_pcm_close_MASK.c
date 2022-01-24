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
struct viadev {size_t direction; int /*<<< orphan*/ * substream; } ;
struct via_rate_lock {scalar_t__ rate; int /*<<< orphan*/  lock; int /*<<< orphan*/  used; } ;
struct via82xx {int /*<<< orphan*/  ac97; struct via_rate_lock* rates; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_FRONT_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LFE_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_SURR_DAC_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct via82xx* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct via82xx *chip = FUNC1(substream);
	struct viadev *viadev = substream->runtime->private_data;
	struct via_rate_lock *ratep;

	/* release the rate lock */
	ratep = &chip->rates[viadev->direction];
	FUNC2(&ratep->lock);
	ratep->used--;
	if (! ratep->used)
		ratep->rate = 0;
	FUNC3(&ratep->lock);
	if (! ratep->rate) {
		if (! viadev->direction) {
			FUNC0(chip->ac97,
					      AC97_PCM_FRONT_DAC_RATE, 0);
			FUNC0(chip->ac97,
					      AC97_PCM_SURR_DAC_RATE, 0);
			FUNC0(chip->ac97,
					      AC97_PCM_LFE_DAC_RATE, 0);
		} else
			FUNC0(chip->ac97,
					      AC97_PCM_LR_ADC_RATE, 0);
	}
	viadev->substream = NULL;
	return 0;
}