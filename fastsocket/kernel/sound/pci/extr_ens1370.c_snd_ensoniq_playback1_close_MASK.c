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
struct ensoniq {int /*<<< orphan*/  mode; int /*<<< orphan*/ * playback1_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES_MODE_PLAY1 ; 
 struct ensoniq* FUNC0 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream)
{
	struct ensoniq *ensoniq = FUNC0(substream);

	ensoniq->playback1_substream = NULL;
	ensoniq->mode &= ~ES_MODE_PLAY1;
	return 0;
}