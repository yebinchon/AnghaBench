#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pmac {TYPE_3__* hp_detect_ctl; int /*<<< orphan*/  card; TYPE_2__* speaker_sw_ctl; TYPE_1__* master_sw_ctl; scalar_t__ auto_mute; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int BURGUNDY_HP_LEFT ; 
 int BURGUNDY_HP_RIGHT ; 
 int BURGUNDY_OUTPUT_INTERN ; 
 int BURGUNDY_OUTPUT_LEFT ; 
 int BURGUNDY_OUTPUT_RIGHT ; 
 int /*<<< orphan*/  MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct snd_pmac*) ; 
 int FUNC3 (struct snd_pmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pmac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct snd_pmac *chip, int do_notify)
{
	if (chip->auto_mute) {
		int imac = FUNC0("iMac");
		int reg, oreg;
		reg = oreg = FUNC3(chip,
				MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES);
		reg &= imac ? ~(BURGUNDY_OUTPUT_LEFT | BURGUNDY_OUTPUT_RIGHT
				| BURGUNDY_HP_LEFT | BURGUNDY_HP_RIGHT)
			: ~(BURGUNDY_OUTPUT_LEFT | BURGUNDY_OUTPUT_RIGHT
				| BURGUNDY_OUTPUT_INTERN);
		if (FUNC2(chip))
			reg |= imac ? (BURGUNDY_HP_LEFT | BURGUNDY_HP_RIGHT)
				: (BURGUNDY_OUTPUT_LEFT
					| BURGUNDY_OUTPUT_RIGHT);
		else
			reg |= imac ? (BURGUNDY_OUTPUT_LEFT
					| BURGUNDY_OUTPUT_RIGHT)
				: (BURGUNDY_OUTPUT_INTERN);
		if (do_notify && reg == oreg)
			return;
		FUNC4(chip,
				MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES, reg);
		if (do_notify) {
			FUNC1(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
				       &chip->master_sw_ctl->id);
			FUNC1(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
				       &chip->speaker_sw_ctl->id);
			FUNC1(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
				       &chip->hp_detect_ctl->id);
		}
	}
}