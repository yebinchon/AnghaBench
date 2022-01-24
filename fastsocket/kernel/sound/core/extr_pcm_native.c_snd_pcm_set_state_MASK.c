#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int SNDRV_PCM_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream, int state)
{
	FUNC0(substream);
	if (substream->runtime->status->state != SNDRV_PCM_STATE_DISCONNECTED)
		substream->runtime->status->state = state;
	FUNC1(substream);
}