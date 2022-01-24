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
struct snd_kcontrol {unsigned int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct dg* model_data; } ;
struct dg {int** input_vol; unsigned int input_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4245_PGA_A_CTRL ; 
 int /*<<< orphan*/  CS4245_PGA_B_CTRL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *ctl,
			 struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	struct dg *data = chip->model_data;
	unsigned int idx = ctl->private_value;
	int changed = 0;

	if (value->value.integer.value[0] < 2 * -12 ||
	    value->value.integer.value[0] > 2 * 12 ||
	    value->value.integer.value[1] < 2 * -12 ||
	    value->value.integer.value[1] > 2 * 12)
		return -EINVAL;
	FUNC1(&chip->mutex);
	changed = data->input_vol[idx][0] != value->value.integer.value[0] ||
		  data->input_vol[idx][1] != value->value.integer.value[1];
	if (changed) {
		data->input_vol[idx][0] = value->value.integer.value[0];
		data->input_vol[idx][1] = value->value.integer.value[1];
		if (idx == data->input_sel) {
			FUNC0(chip, CS4245_PGA_A_CTRL,
					    data->input_vol[idx][0]);
			FUNC0(chip, CS4245_PGA_B_CTRL,
					    data->input_vol[idx][1]);
		}
	}
	FUNC2(&chip->mutex);
	return changed;
}