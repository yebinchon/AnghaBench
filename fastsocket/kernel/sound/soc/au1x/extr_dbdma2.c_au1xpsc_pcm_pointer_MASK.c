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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 size_t FUNC0 (struct snd_pcm_substream*) ; 
 TYPE_1__** au1xpsc_audio_pcmdma ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC2(struct snd_pcm_substream *substream)
{
	return FUNC1(substream->runtime,
		au1xpsc_audio_pcmdma[FUNC0(substream)]->pos);
}