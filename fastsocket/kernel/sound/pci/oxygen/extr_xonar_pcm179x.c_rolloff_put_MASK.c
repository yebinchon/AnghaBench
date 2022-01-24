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
typedef  int /*<<< orphan*/  u8 ;
struct xonar_pcm179x {unsigned int dacs; int /*<<< orphan*/ ** pcm1796_regs; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct xonar_pcm179x* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCM1796_FLT_MASK ; 
 int /*<<< orphan*/  PCM1796_FLT_SHARP ; 
 int /*<<< orphan*/  PCM1796_FLT_SLOW ; 
 int PCM1796_REG_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *ctl,
		       struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	struct xonar_pcm179x *data = chip->model_data;
	unsigned int i;
	int changed;
	u8 reg;

	FUNC0(&chip->mutex);
	reg = data->pcm1796_regs[0][19 - PCM1796_REG_BASE];
	reg &= ~PCM1796_FLT_MASK;
	if (!value->value.enumerated.item[0])
		reg |= PCM1796_FLT_SHARP;
	else
		reg |= PCM1796_FLT_SLOW;
	changed = reg != data->pcm1796_regs[0][19 - PCM1796_REG_BASE];
	if (changed) {
		for (i = 0; i < data->dacs; ++i)
			FUNC2(chip, i, 19, reg);
	}
	FUNC1(&chip->mutex);
	return changed;
}