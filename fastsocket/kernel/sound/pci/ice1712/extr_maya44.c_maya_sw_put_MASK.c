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
struct snd_wm8776 {unsigned int switch_bits; } ;
struct snd_maya44 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ice; struct snd_wm8776* wm; } ;
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_maya44* FUNC6 (struct snd_kcontrol*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct snd_wm8776*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
		       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_maya44 *chip = FUNC6(kcontrol);
	struct snd_wm8776 *wm =
		&chip->wm[FUNC5(kcontrol, &ucontrol->id)];
	unsigned int idx = FUNC0(kcontrol->private_value);
	unsigned int mask, val;
	int changed;

	FUNC3(&chip->mutex);
	mask = 1 << idx;
	wm->switch_bits &= ~mask;
	val = ucontrol->value.integer.value[0];
	if (val)
		wm->switch_bits |= mask;
	mask = FUNC1(kcontrol->private_value);
	changed = FUNC7(chip->ice, wm,
				    FUNC2(kcontrol->private_value),
				    mask, val ? mask : 0);
	FUNC4(&chip->mutex);
	return changed;
}