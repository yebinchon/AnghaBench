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

/* Variables and functions */
 int ENXIO ; 
#define  SNDRV_PCM_IOCTL1_CHANNEL_INFO 131 
#define  SNDRV_PCM_IOCTL1_FIFO_SIZE 130 
#define  SNDRV_PCM_IOCTL1_INFO 129 
#define  SNDRV_PCM_IOCTL1_RESET 128 
 int FUNC0 (struct snd_pcm_substream*,void*) ; 
 int FUNC1 (struct snd_pcm_substream*,void*) ; 
 int FUNC2 (struct snd_pcm_substream*,void*) ; 

int FUNC3(struct snd_pcm_substream *substream,
		      unsigned int cmd, void *arg)
{
	switch (cmd) {
	case SNDRV_PCM_IOCTL1_INFO:
		return 0;
	case SNDRV_PCM_IOCTL1_RESET:
		return FUNC2(substream, arg);
	case SNDRV_PCM_IOCTL1_CHANNEL_INFO:
		return FUNC0(substream, arg);
	case SNDRV_PCM_IOCTL1_FIFO_SIZE:
		return FUNC1(substream, arg);
	}
	return -ENXIO;
}