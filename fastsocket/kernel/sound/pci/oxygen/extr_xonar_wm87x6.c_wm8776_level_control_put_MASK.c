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
typedef  int u16 ;
struct xonar_wm87x6 {int* wm8776_regs; int /*<<< orphan*/ * lc_controls; } ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 unsigned int LC_CONTROL_ALC ; 
 unsigned int LC_CONTROL_LIMITER ; 
 size_t WM8776_ALCCTRL1 ; 
 size_t WM8776_ALCCTRL2 ; 
 int WM8776_LCEN ; 
 int WM8776_LCSEL_ALC_STEREO ; 
 int WM8776_LCSEL_LIMITER ; 
 int WM8776_LCSEL_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*,size_t,int) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *ctl,
				    struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	struct xonar_wm87x6 *data = chip->model_data;
	unsigned int mode = 0, i;
	u16 ctrl1, ctrl2;
	int changed;

	if (value->value.enumerated.item[0] >= 3)
		return -EINVAL;
	FUNC2(&chip->mutex);
	changed = value->value.enumerated.item[0] != ctl->private_value;
	if (changed) {
		ctl->private_value = value->value.enumerated.item[0];
		ctrl1 = data->wm8776_regs[WM8776_ALCCTRL1];
		ctrl2 = data->wm8776_regs[WM8776_ALCCTRL2];
		switch (value->value.enumerated.item[0]) {
		default:
			FUNC4(chip, WM8776_ALCCTRL2,
					    ctrl2 & ~WM8776_LCEN);
			break;
		case 1:
			FUNC4(chip, WM8776_ALCCTRL1,
					    (ctrl1 & ~WM8776_LCSEL_MASK) |
					    WM8776_LCSEL_LIMITER);
			FUNC4(chip, WM8776_ALCCTRL2,
					    ctrl2 | WM8776_LCEN);
			mode = LC_CONTROL_LIMITER;
			break;
		case 2:
			FUNC4(chip, WM8776_ALCCTRL1,
					    (ctrl1 & ~WM8776_LCSEL_MASK) |
					    WM8776_LCSEL_ALC_STEREO);
			FUNC4(chip, WM8776_ALCCTRL2,
					    ctrl2 | WM8776_LCEN);
			mode = LC_CONTROL_ALC;
			break;
		}
		for (i = 0; i < FUNC0(data->lc_controls); ++i)
			FUNC1(chip, data->lc_controls[i], mode);
	}
	FUNC3(&chip->mutex);
	return changed;
}