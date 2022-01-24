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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs5535audio {int /*<<< orphan*/  ac97; } ;
struct TYPE_2__ {int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs5535audio* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct cs5535audio *cs5535au = FUNC1(substream);
	return FUNC0(cs5535au->ac97, AC97_PCM_LR_ADC_RATE,
				 substream->runtime->rate);
}