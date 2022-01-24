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
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int gain; } ;
struct snd_harmony {int /*<<< orphan*/  mixer_lock; TYPE_1__ st; } ;
struct TYPE_5__ {int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;

/* Variables and functions */
 int HARMONY_GAIN_IS_SHIFT ; 
 struct snd_harmony* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC3(struct snd_kcontrol *kc, 
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_harmony *h = FUNC0(kc);
	int value;
	
	FUNC1(&h->mixer_lock);

	value = (h->st.gain >> HARMONY_GAIN_IS_SHIFT) & 1;
	ucontrol->value.enumerated.item[0] = value;

	FUNC2(&h->mixer_lock);

	return 0;
}