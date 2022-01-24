#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_korg1212 {int /*<<< orphan*/  lock; TYPE_3__* sharedBufferPtr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {void** value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int /*<<< orphan*/ * volumeData; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_korg1212* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
					   struct snd_ctl_elem_value *u)
{
	struct snd_korg1212 *korg1212 = FUNC1(kcontrol);
        int i;

	FUNC2(&korg1212->lock);

	i = kcontrol->private_value;
        u->value.integer.value[0] = FUNC0(korg1212->sharedBufferPtr->volumeData[i]);

	if (i >= 8) 
                u->value.integer.value[1] = FUNC0(korg1212->sharedBufferPtr->volumeData[i+1]);

        FUNC3(&korg1212->lock);

        return 0;
}