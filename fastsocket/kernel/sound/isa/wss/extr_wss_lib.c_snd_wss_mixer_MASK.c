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
struct snd_wss {int hardware; TYPE_1__* pcm; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int WSS_HW_AD1848_MASK ; 
 int WSS_HW_OPTI93X ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * snd_ad1848_controls ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_wss*) ; 
 int /*<<< orphan*/ * snd_opti93x_controls ; 
 int /*<<< orphan*/ * snd_wss_controls ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct snd_wss *chip)
{
	struct snd_card *card;
	unsigned int idx;
	int err;

	if (FUNC1(!chip || !chip->pcm))
		return -EINVAL;

	card = chip->card;

	FUNC4(card->mixername, chip->pcm->name);

	if (chip->hardware == WSS_HW_OPTI93X)
		for (idx = 0; idx < FUNC0(snd_opti93x_controls); idx++) {
			err = FUNC2(card,
					FUNC3(&snd_opti93x_controls[idx],
						     chip));
			if (err < 0)
				return err;
		}
	else if (chip->hardware & WSS_HW_AD1848_MASK)
		for (idx = 0; idx < FUNC0(snd_ad1848_controls); idx++) {
			err = FUNC2(card,
					FUNC3(&snd_ad1848_controls[idx],
						     chip));
			if (err < 0)
				return err;
		}
	else
		for (idx = 0; idx < FUNC0(snd_wss_controls); idx++) {
			err = FUNC2(card,
					FUNC3(&snd_wss_controls[idx],
						     chip));
			if (err < 0)
				return err;
		}
	return 0;
}