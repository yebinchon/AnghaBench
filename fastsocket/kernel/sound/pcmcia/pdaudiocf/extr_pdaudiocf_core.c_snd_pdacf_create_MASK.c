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
struct snd_pdacf {int /*<<< orphan*/  tq; int /*<<< orphan*/  ak4117_lock; int /*<<< orphan*/  reg_lock; struct snd_card* card; } ;
struct snd_card {struct snd_pdacf* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_pdacf* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pdacf*) ; 
 int /*<<< orphan*/  pdacf_tasklet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

struct snd_pdacf *FUNC4(struct snd_card *card)
{
	struct snd_pdacf *chip;

	chip = FUNC0(sizeof(*chip), GFP_KERNEL);
	if (chip == NULL)
		return NULL;
	chip->card = card;
	FUNC2(&chip->reg_lock);
	FUNC2(&chip->ak4117_lock);
	FUNC3(&chip->tq, pdacf_tasklet, (unsigned long)chip);
	card->private_data = chip;

	FUNC1(chip);
	return chip;
}