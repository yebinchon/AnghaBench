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
typedef  int u8 ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct dg* model_data; } ;
struct dg {int output_sel; int* cs4245_regs; int hp_vol_att; } ;

/* Variables and functions */
 int CS4245_A_OUT_SEL_DAC ; 
 int CS4245_A_OUT_SEL_HIZ ; 
 int CS4245_A_OUT_SEL_MASK ; 
 size_t CS4245_DAC_A_CTRL ; 
 size_t CS4245_DAC_B_CTRL ; 
 size_t CS4245_SIGNAL_SEL ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_HP_REAR ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *ctl,
			     struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	struct dg *data = chip->model_data;
	u8 reg;
	int changed;

	if (value->value.enumerated.item[0] > 2)
		return -EINVAL;

	FUNC1(&chip->mutex);
	changed = value->value.enumerated.item[0] != data->output_sel;
	if (changed) {
		data->output_sel = value->value.enumerated.item[0];

		reg = data->cs4245_regs[CS4245_SIGNAL_SEL] &
						~CS4245_A_OUT_SEL_MASK;
		reg |= data->output_sel == 2 ?
				CS4245_A_OUT_SEL_DAC : CS4245_A_OUT_SEL_HIZ;
		FUNC0(chip, CS4245_SIGNAL_SEL, reg);

		FUNC0(chip, CS4245_DAC_A_CTRL,
				    data->output_sel ? data->hp_vol_att : 0);
		FUNC0(chip, CS4245_DAC_B_CTRL,
				    data->output_sel ? data->hp_vol_att : 0);

		FUNC3(chip, OXYGEN_GPIO_DATA,
				      data->output_sel == 1 ? GPIO_HP_REAR : 0,
				      GPIO_HP_REAR);
	}
	FUNC2(&chip->mutex);
	return changed;
}