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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct au1xpsc_audio_data*) ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int FUNC6 (struct snd_pcm_substream*) ; 
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
				int cmd, struct snd_soc_dai *dai)
{
	/* FIXME */
	struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;
	int ret, stype = FUNC6(substream);

	ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		FUNC9(FUNC0(stype), FUNC4(pscdata));
		FUNC8();
		FUNC9(FUNC1(stype), FUNC4(pscdata));
		FUNC8();
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC9(FUNC2(stype), FUNC4(pscdata));
		FUNC8();

		while (FUNC7(FUNC5(pscdata)) & FUNC3(stype))
			asm volatile ("nop");

		FUNC9(FUNC0(stype), FUNC4(pscdata));
		FUNC8();

		break;
	default:
		ret = -EINVAL;
	}
	return ret;
}