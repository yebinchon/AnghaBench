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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct echoaudio {scalar_t__* nominal_level; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct echoaudio*) ; 
 int FUNC1 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC2 (struct echoaudio*,int,scalar_t__) ; 
 struct echoaudio* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct echoaudio *chip;
	int c, changed;

	changed = 0;
	chip = FUNC3(kcontrol);
	FUNC4(&chip->lock);
	for (c = 0; c < FUNC1(chip); c++) {
		if (chip->nominal_level[FUNC0(chip) + c] !=
		    ucontrol->value.integer.value[c]) {
			FUNC2(chip, FUNC0(chip) + c,
					  ucontrol->value.integer.value[c]);
			changed = 1;
		}
	}
	if (changed)
		FUNC6(chip);	/* "Output" is not a mistake
						 * here.
						 */
	FUNC5(&chip->lock);
	return changed;
}