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
struct snd_opl4 {struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 int FUNC0 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_opl4*) ; 
 int /*<<< orphan*/ * snd_opl4_controls ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct snd_opl4 *opl4)
{
	struct snd_card *card = opl4->card;
	int i, err;

	FUNC2(card->mixername, ",OPL4");

	for (i = 0; i < 2; ++i) {
		err = FUNC0(card, FUNC1(&snd_opl4_controls[i], opl4));
		if (err < 0)
			return err;
	}
	return 0;
}