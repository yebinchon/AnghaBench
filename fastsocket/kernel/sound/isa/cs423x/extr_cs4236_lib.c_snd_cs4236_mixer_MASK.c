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
struct snd_wss {int hardware; struct snd_card* card; } ;
struct snd_kcontrol_new {int dummy; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol_new*) ; 
 int EINVAL ; 
#define  WSS_HW_CS4235 131 
#define  WSS_HW_CS4237B 130 
#define  WSS_HW_CS4238B 129 
#define  WSS_HW_CS4239 128 
 scalar_t__ FUNC1 (int) ; 
 struct snd_kcontrol_new* snd_cs4235_controls ; 
 struct snd_kcontrol_new* snd_cs4236_3d_controls_cs4235 ; 
 struct snd_kcontrol_new* snd_cs4236_3d_controls_cs4237 ; 
 struct snd_kcontrol_new* snd_cs4236_3d_controls_cs4238 ; 
 struct snd_kcontrol_new* snd_cs4236_controls ; 
 struct snd_kcontrol_new* snd_cs4236_iec958_controls ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol_new*,struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct snd_wss *chip)
{
	struct snd_card *card;
	unsigned int idx, count;
	int err;
	struct snd_kcontrol_new *kcontrol;

	if (FUNC1(!chip || !chip->card))
		return -EINVAL;
	card = chip->card;
	FUNC5(card->mixername, FUNC4(chip));

	if (chip->hardware == WSS_HW_CS4235 ||
	    chip->hardware == WSS_HW_CS4239) {
		for (idx = 0; idx < FUNC0(snd_cs4235_controls); idx++) {
			if ((err = FUNC2(card, FUNC3(&snd_cs4235_controls[idx], chip))) < 0)
				return err;
		}
	} else {
		for (idx = 0; idx < FUNC0(snd_cs4236_controls); idx++) {
			if ((err = FUNC2(card, FUNC3(&snd_cs4236_controls[idx], chip))) < 0)
				return err;
		}
	}
	switch (chip->hardware) {
	case WSS_HW_CS4235:
	case WSS_HW_CS4239:
		count = FUNC0(snd_cs4236_3d_controls_cs4235);
		kcontrol = snd_cs4236_3d_controls_cs4235;
		break;
	case WSS_HW_CS4237B:
		count = FUNC0(snd_cs4236_3d_controls_cs4237);
		kcontrol = snd_cs4236_3d_controls_cs4237;
		break;
	case WSS_HW_CS4238B:
		count = FUNC0(snd_cs4236_3d_controls_cs4238);
		kcontrol = snd_cs4236_3d_controls_cs4238;
		break;
	default:
		count = 0;
		kcontrol = NULL;
	}
	for (idx = 0; idx < count; idx++, kcontrol++) {
		if ((err = FUNC2(card, FUNC3(kcontrol, chip))) < 0)
			return err;
	}
	if (chip->hardware == WSS_HW_CS4237B ||
	    chip->hardware == WSS_HW_CS4238B) {
		for (idx = 0; idx < FUNC0(snd_cs4236_iec958_controls); idx++) {
			if ((err = FUNC2(card, FUNC3(&snd_cs4236_iec958_controls[idx], chip))) < 0)
				return err;
		}
	}
	return 0;
}