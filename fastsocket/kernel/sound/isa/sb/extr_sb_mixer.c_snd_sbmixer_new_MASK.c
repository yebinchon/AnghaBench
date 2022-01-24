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
struct snd_sb {int hardware; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  SB_HW_10 136 
#define  SB_HW_16 135 
#define  SB_HW_20 134 
#define  SB_HW_201 133 
#define  SB_HW_ALS100 132 
#define  SB_HW_ALS4000 131 
#define  SB_HW_CS5530 130 
#define  SB_HW_DT019X 129 
#define  SB_HW_PRO 128 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  snd_als4000_controls ; 
 int /*<<< orphan*/  snd_als4000_init_values ; 
 int /*<<< orphan*/  snd_dt019x_controls ; 
 int /*<<< orphan*/  snd_dt019x_init_values ; 
 int /*<<< orphan*/  snd_sb16_controls ; 
 int /*<<< orphan*/  snd_sb16_init_values ; 
 int /*<<< orphan*/  snd_sb20_controls ; 
 int /*<<< orphan*/  snd_sb20_init_values ; 
 int FUNC2 (struct snd_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  snd_sbpro_controls ; 
 int /*<<< orphan*/  snd_sbpro_init_values ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct snd_sb *chip)
{
	struct snd_card *card;
	int err;

	if (FUNC1(!chip || !chip->card))
		return -EINVAL;

	card = chip->card;

	switch (chip->hardware) {
	case SB_HW_10:
		return 0; /* no mixer chip on SB1.x */
	case SB_HW_20:
	case SB_HW_201:
		if ((err = FUNC2(chip,
					    snd_sb20_controls,
					    FUNC0(snd_sb20_controls),
					    snd_sb20_init_values,
					    FUNC0(snd_sb20_init_values),
					    "CTL1335")) < 0)
			return err;
		break;
	case SB_HW_PRO:
		if ((err = FUNC2(chip,
					    snd_sbpro_controls,
					    FUNC0(snd_sbpro_controls),
					    snd_sbpro_init_values,
					    FUNC0(snd_sbpro_init_values),
					    "CTL1345")) < 0)
			return err;
		break;
	case SB_HW_16:
	case SB_HW_ALS100:
	case SB_HW_CS5530:
		if ((err = FUNC2(chip,
					    snd_sb16_controls,
					    FUNC0(snd_sb16_controls),
					    snd_sb16_init_values,
					    FUNC0(snd_sb16_init_values),
					    "CTL1745")) < 0)
			return err;
		break;
	case SB_HW_ALS4000:
		if ((err = FUNC2(chip,
					    snd_als4000_controls,
					    FUNC0(snd_als4000_controls),
					    snd_als4000_init_values,
					    FUNC0(snd_als4000_init_values),
					    "ALS4000")) < 0)
			return err;
		break;
	case SB_HW_DT019X:
		if ((err = FUNC2(chip,
					    snd_dt019x_controls,
					    FUNC0(snd_dt019x_controls),
					    snd_dt019x_init_values,
					    FUNC0(snd_dt019x_init_values),
					    "DT019X")) < 0)
		break;
	default:
		FUNC3(card->mixername, "???");
	}
	return 0;
}