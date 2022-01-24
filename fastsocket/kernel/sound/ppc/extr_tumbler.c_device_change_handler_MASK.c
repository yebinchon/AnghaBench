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
struct work_struct {int dummy; } ;
struct snd_pmac {scalar_t__ model; TYPE_2__* drc_sw_ctl; int /*<<< orphan*/  card; TYPE_1__* hp_detect_ctl; int /*<<< orphan*/  lineout_sw_ctl; int /*<<< orphan*/  master_sw_ctl; int /*<<< orphan*/  speaker_sw_ctl; struct pmac_tumbler* mixer_data; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct pmac_tumbler {int drc_enable; scalar_t__ auto_mute_notify; TYPE_3__ line_mute; TYPE_3__ hp_mute; scalar_t__ anded_reset; TYPE_3__ amp_mute; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ PMAC_TUMBLER ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pmac*,TYPE_3__*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct snd_pmac* device_change_chip ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pmac_tumbler*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_pmac*) ; 
 int FUNC7 (struct snd_pmac*) ; 
 int /*<<< orphan*/  FUNC8 (struct pmac_tumbler*) ; 
 int /*<<< orphan*/  FUNC9 (struct pmac_tumbler*) ; 

__attribute__((used)) static void FUNC10(struct work_struct *work)
{
	struct snd_pmac *chip = device_change_chip;
	struct pmac_tumbler *mix;
	int headphone, lineout;

	if (!chip)
		return;

	mix = chip->mixer_data;
	if (FUNC4(!mix))
		return;

	headphone = FUNC6(chip);
	lineout = FUNC7(chip);

	FUNC0("headphone: %d, lineout: %d\n", headphone, lineout);

	if (headphone || lineout) {
		/* unmute headphone/lineout & mute speaker */
		if (headphone)
			FUNC1(chip, &mix->hp_mute, 0, mix->auto_mute_notify,
				   chip->master_sw_ctl);
		if (lineout && mix->line_mute.addr != 0)
			FUNC1(chip, &mix->line_mute, 0, mix->auto_mute_notify,
				   chip->lineout_sw_ctl);
		if (mix->anded_reset)
			FUNC2(10);
		FUNC1(chip, &mix->amp_mute, 1, mix->auto_mute_notify,
			   chip->speaker_sw_ctl);
	} else {
		/* unmute speaker, mute others */
		FUNC1(chip, &mix->amp_mute, 0, mix->auto_mute_notify,
			   chip->speaker_sw_ctl);
		if (mix->anded_reset)
			FUNC2(10);
		FUNC1(chip, &mix->hp_mute, 1, mix->auto_mute_notify,
			   chip->master_sw_ctl);
		if (mix->line_mute.addr != 0)
			FUNC1(chip, &mix->line_mute, 1, mix->auto_mute_notify,
				   chip->lineout_sw_ctl);
	}
	if (mix->auto_mute_notify)
		FUNC5(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
				       &chip->hp_detect_ctl->id);

#ifdef CONFIG_SND_POWERMAC_AUTO_DRC
	mix->drc_enable = ! (headphone || lineout);
	if (mix->auto_mute_notify)
		snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &chip->drc_sw_ctl->id);
	if (chip->model == PMAC_TUMBLER)
		tumbler_set_drc(mix);
	else
		snapper_set_drc(mix);
#endif

	/* reset the master volume so the correct amplification is applied */
	FUNC9(mix);
}