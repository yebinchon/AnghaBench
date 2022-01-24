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
struct rme96 {struct snd_pcm_substream* playback_substream; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rme96*) ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 131 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 130 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 struct rme96* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct rme96*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rme96*) ; 

__attribute__((used)) static int
FUNC4(struct snd_pcm_substream *substream, 
			   int cmd)
{
	struct rme96 *rme96 = FUNC1(substream);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (!FUNC0(rme96)) {
			if (substream != rme96->playback_substream) {
				return -EBUSY;
			}
			FUNC2(rme96, 0);
		}
		break;

	case SNDRV_PCM_TRIGGER_STOP:
		if (FUNC0(rme96)) {
			if (substream != rme96->playback_substream) {
				return -EBUSY;
			}
			FUNC3(rme96);
		}
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		if (FUNC0(rme96)) {
			FUNC3(rme96);
		}
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		if (!FUNC0(rme96)) {
			FUNC2(rme96, 1);
		}
		break;
		
	default:
		return -EINVAL;
	}
	return 0;
}