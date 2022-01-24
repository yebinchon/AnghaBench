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
struct snd_dbri {int dummy; } ;
struct dbri_streaminfo {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 struct dbri_streaminfo* FUNC0 (struct snd_dbri*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  D_USR ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dbri*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_dbri* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_dbri*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_dbri *dbri = FUNC4(substream);
	struct dbri_streaminfo *info = FUNC0(dbri, substream);
	int ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC1(D_USR, "start audio, period is %d bytes\n",
			(int)FUNC3(substream));
		/* Re-submit the TDs. */
		FUNC5(dbri);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(D_USR, "stop audio.\n");
		FUNC2(dbri, info->pipe);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}