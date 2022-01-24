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
struct snd_maya44 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ice; } ;
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct snd_maya44* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
			    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_maya44 *chip = FUNC5(kcontrol);
	unsigned int shift = FUNC1(kcontrol->private_value);
	unsigned int val, mask;
	int changed;

	FUNC3(&chip->mutex);
	mask = 1 << shift;
	val = ucontrol->value.integer.value[0];
	if (FUNC0(kcontrol->private_value))
		val = !val;
	val = val ? mask : 0;
	changed = FUNC2(chip->ice, mask, val);
	FUNC4(&chip->mutex);
	return changed;
}