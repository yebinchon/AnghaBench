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
struct snd_korg1212 {int /*<<< orphan*/  lock; int /*<<< orphan*/  rightADCInSens; int /*<<< orphan*/  leftADCInSens; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 struct snd_korg1212* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				    struct snd_ctl_elem_value *u)
{
	struct snd_korg1212 *korg1212 = FUNC0(kcontrol);

	FUNC1(&korg1212->lock);

        u->value.integer.value[0] = korg1212->leftADCInSens;
        u->value.integer.value[1] = korg1212->rightADCInSens;

	FUNC2(&korg1212->lock);

        return 0;
}