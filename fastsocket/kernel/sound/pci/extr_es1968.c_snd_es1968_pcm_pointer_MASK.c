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
struct esschan {unsigned int wav_shift; unsigned int dma_size; } ;
struct es1968 {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {struct esschan* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC1 (struct es1968*,struct esschan*) ; 
 struct es1968* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	struct es1968 *chip = FUNC2(substream);
	struct esschan *es = substream->runtime->private_data;
	unsigned int ptr;

	ptr = FUNC1(chip, es) << es->wav_shift;
	
	return FUNC0(substream->runtime, ptr % es->dma_size);
}