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
struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*,int,void*,size_t,size_t) ; 

int FUNC1(struct snd_pcm *pcm,
					  int type, void *data,
					  size_t size, size_t max)
{
	struct snd_pcm_substream *substream;
	int stream, err;

	for (stream = 0; stream < 2; stream++)
		for (substream = pcm->streams[stream].substream; substream; substream = substream->next)
			if ((err = FUNC0(substream, type, data, size, max)) < 0)
				return err;
	return 0;
}