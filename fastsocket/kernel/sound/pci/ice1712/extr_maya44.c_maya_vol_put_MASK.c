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
struct snd_wm8776 {unsigned int** volumes; } ;
struct snd_maya44 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ice; struct snd_wm8776* wm; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct maya_vol_info {unsigned int maxval; unsigned int mute; unsigned int offset; unsigned int update; int mask; int* mux_bits; int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8776_REG_ADC_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_maya44* FUNC3 (struct snd_kcontrol*) ; 
 struct maya_vol_info* vol_info ; 
 int FUNC4 (int /*<<< orphan*/ ,struct snd_wm8776*,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_value *ucontrol)
{
	struct snd_maya44 *chip = FUNC3(kcontrol);
	struct snd_wm8776 *wm =
		&chip->wm[FUNC2(kcontrol, &ucontrol->id)];
	unsigned int idx = kcontrol->private_value;
	struct maya_vol_info *vol = &vol_info[idx];
	unsigned int val, data;
	int ch, changed = 0;

	FUNC0(&chip->mutex);
	for (ch = 0; ch < 2; ch++) {
		val = ucontrol->value.integer.value[ch];
		if (val > vol->maxval)
			val = vol->maxval;
		if (val == wm->volumes[idx][ch])
			continue;
		if (!val)
			data = vol->mute;
		else
			data = (val - 1) + vol->offset;
		data |= vol->update;
		changed |= FUNC4(chip->ice, wm, vol->regs[ch],
					     vol->mask | vol->update, data);
		if (vol->mux_bits[ch])
			FUNC4(chip->ice, wm, WM8776_REG_ADC_MUX,
					  vol->mux_bits[ch],
					  val ? 0 : vol->mux_bits[ch]);
		wm->volumes[idx][ch] = val;
	}
	FUNC1(&chip->mutex);
	return changed;
}