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
typedef  scalar_t__ u32 ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct oxygen {scalar_t__ spdif_bits; int pcm_active; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int PCM_SPDIF ; 
 scalar_t__ FUNC0 (struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *ctl,
			     struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	u32 new_bits;
	int changed;

	new_bits = FUNC0(value);
	FUNC1(&chip->mutex);
	changed = new_bits != chip->spdif_bits;
	if (changed) {
		chip->spdif_bits = new_bits;
		if (!(chip->pcm_active & (1 << PCM_SPDIF)))
			FUNC3(chip, new_bits);
	}
	FUNC2(&chip->mutex);
	return changed;
}