#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int periods; } ;
typedef  int snd_pcm_uframes_t ;
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ snd_cx25821_card_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC2(struct snd_pcm_substream
					     *substream)
{
	snd_cx25821_card_t *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	u16 count;

	count = FUNC0(&chip->count);

	return runtime->period_size * (count & (runtime->periods - 1));
}