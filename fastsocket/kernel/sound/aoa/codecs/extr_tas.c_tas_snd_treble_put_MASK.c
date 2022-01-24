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
struct tas {scalar_t__ treble; int /*<<< orphan*/  mtx; scalar_t__ hw_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TAS3004_TREBLE_MAX ; 
 scalar_t__ TAS3004_TREBLE_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tas* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct tas*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct tas *tas = FUNC2(kcontrol);

	if (ucontrol->value.integer.value[0] < TAS3004_TREBLE_MIN ||
	    ucontrol->value.integer.value[0] > TAS3004_TREBLE_MAX)
		return -EINVAL;
	FUNC0(&tas->mtx);
	if (tas->treble == ucontrol->value.integer.value[0]) {
		FUNC1(&tas->mtx);
		return 0;
	}

	tas->treble = ucontrol->value.integer.value[0];
	if (tas->hw_enabled)
		FUNC3(tas);
	FUNC1(&tas->mtx);
	return 1;
}