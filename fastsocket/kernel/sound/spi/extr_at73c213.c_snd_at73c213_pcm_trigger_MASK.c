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
struct snd_pcm_substream {int dummy; } ;
struct snd_at73c213 {int /*<<< orphan*/  lock; TYPE_2__* spi; TYPE_1__* ssc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  IDR_ENDTX ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IER_ENDTX ; 
 int /*<<< orphan*/  PDC_PTCR ; 
 int /*<<< orphan*/  PDC_PTCR_TXTDIS ; 
 int /*<<< orphan*/  PDC_PTCR_TXTEN ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct snd_at73c213* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				   int cmd)
{
	struct snd_at73c213 *chip = FUNC2(substream);
	int retval = 0;

	FUNC3(&chip->lock);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC5(chip->ssc->regs, IER, FUNC0(IER_ENDTX));
		FUNC5(chip->ssc->regs, PDC_PTCR, FUNC0(PDC_PTCR_TXTEN));
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC5(chip->ssc->regs, PDC_PTCR, FUNC0(PDC_PTCR_TXTDIS));
		FUNC5(chip->ssc->regs, IDR, FUNC0(IDR_ENDTX));
		break;
	default:
		FUNC1(&chip->spi->dev, "spurious command %x\n", cmd);
		retval = -EINVAL;
		break;
	}

	FUNC4(&chip->lock);

	return retval;
}