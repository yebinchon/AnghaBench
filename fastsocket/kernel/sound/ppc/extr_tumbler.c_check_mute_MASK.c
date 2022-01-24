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
struct snd_pmac {int /*<<< orphan*/  card; } ;
struct snd_kcontrol {int /*<<< orphan*/  id; } ;
struct pmac_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int FUNC0 (struct pmac_gpio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pmac_gpio*,int) ; 

__attribute__((used)) static void FUNC3(struct snd_pmac *chip, struct pmac_gpio *gp, int val, int do_notify,
		       struct snd_kcontrol *sw)
{
	if (FUNC0(gp) != val) {
		FUNC2(gp, val);
		if (do_notify)
			FUNC1(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
				       &sw->id);
	}
}