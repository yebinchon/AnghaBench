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
struct snd_ymfpci {int spdif_bits; TYPE_2__* spdif_pcm_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  reg_lock; scalar_t__ spdif_opened; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  YDSXGR_SPDIFOUTCTRL ; 
 int /*<<< orphan*/  YDSXGR_SPDIFOUTSTATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct snd_ymfpci* FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ymfpci*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_ymfpci *chip = FUNC1(substream);

	FUNC5(&chip->reg_lock);
	chip->spdif_opened = 0;
	FUNC7(chip);
	FUNC4(chip, YDSXGR_SPDIFOUTCTRL,
			  FUNC3(chip, YDSXGR_SPDIFOUTCTRL) & ~2);
	FUNC4(chip, YDSXGR_SPDIFOUTSTATUS, chip->spdif_bits);
	FUNC6(&chip->reg_lock);
	chip->spdif_pcm_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC0(chip->card, SNDRV_CTL_EVENT_MASK_VALUE |
		       SNDRV_CTL_EVENT_MASK_INFO, &chip->spdif_pcm_ctl->id);
	return FUNC2(substream);
}