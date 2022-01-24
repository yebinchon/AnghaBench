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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct atmel_abdac {int /*<<< orphan*/  sample_clk; TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DATA ; 
 int EINVAL ; 
 int /*<<< orphan*/  EN ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_abdac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct atmel_abdac* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream, int cmd)
{
	struct atmel_abdac *dac = FUNC6(substream);
	int retval = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE: /* fall through */
	case SNDRV_PCM_TRIGGER_RESUME: /* fall through */
	case SNDRV_PCM_TRIGGER_START:
		FUNC2(dac->sample_clk);
		retval = FUNC4(dac->dma.chan);
		if (retval)
			goto out;
		FUNC3(dac, CTRL, FUNC0(EN));
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH: /* fall through */
	case SNDRV_PCM_TRIGGER_SUSPEND: /* fall through */
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC5(dac->dma.chan);
		FUNC3(dac, DATA, 0);
		FUNC3(dac, CTRL, 0);
		FUNC1(dac->sample_clk);
		break;
	default:
		retval = -EINVAL;
		break;
	}
out:
	return retval;
}