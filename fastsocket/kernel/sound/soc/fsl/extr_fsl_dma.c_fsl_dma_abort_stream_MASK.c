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
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream)
{
	unsigned long flags;

	FUNC2(substream, flags);

	if (FUNC0(substream))
		FUNC1(substream, SNDRV_PCM_STATE_XRUN);

	FUNC3(substream, flags);
}