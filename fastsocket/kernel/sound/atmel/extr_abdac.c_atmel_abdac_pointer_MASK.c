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
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ dma_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct atmel_abdac {TYPE_1__ dma; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_runtime*,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 struct atmel_abdac* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC3(struct snd_pcm_substream *substream)
{
	struct atmel_abdac	*dac = FUNC2(substream);
	struct snd_pcm_runtime	*runtime = substream->runtime;
	snd_pcm_uframes_t	frames;
	unsigned long		bytes;

	bytes = FUNC1(dac->dma.chan);
	bytes -= runtime->dma_addr;

	frames = FUNC0(runtime, bytes);
	if (frames >= runtime->buffer_size)
		frames -= runtime->buffer_size;

	return frames;
}