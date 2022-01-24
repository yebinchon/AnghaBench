#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* set_pro_rate ) (struct snd_ice1712*,int /*<<< orphan*/ ) ;} ;
struct snd_ice1712 {unsigned int (* get_rate ) (struct snd_ice1712*) ;unsigned int pro_rate_default; unsigned int akm_codecs; TYPE_6__* akm; TYPE_4__ gpio; int /*<<< orphan*/  reg_lock; TYPE_3__* hw_rates; int /*<<< orphan*/  (* set_spdif_clock ) (struct snd_ice1712*) ;scalar_t__ (* is_spdif_master ) (struct snd_ice1712*) ;} ;
struct TYPE_7__ {unsigned int* item; } ;
struct TYPE_8__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* set_rate_val ) (TYPE_6__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {TYPE_5__ ops; } ;
struct TYPE_9__ {unsigned int count; unsigned int* list; } ;

/* Variables and functions */
 int EINVAL ; 
 struct snd_ice1712* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct snd_ice1712*) ; 
 unsigned int FUNC5 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_kcontrol *kcontrol,
					     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC0(kcontrol);
	unsigned int old_rate, new_rate;
	unsigned int item = ucontrol->value.enumerated.item[0];
	unsigned int spdif = ice->hw_rates->count;

	if (item > spdif)
		return -EINVAL;

	FUNC2(&ice->reg_lock);
	if (ice->is_spdif_master(ice))
		old_rate = 0;
	else
		old_rate = ice->get_rate(ice);
	if (item == spdif) {
		/* switching to external clock via SPDIF */
		ice->set_spdif_clock(ice);
		new_rate = 0;
	} else {
		/* internal on-card clock */
		new_rate = ice->hw_rates->list[item];
		ice->pro_rate_default = new_rate;
		FUNC3(&ice->reg_lock);
		FUNC1(ice, ice->pro_rate_default, 1);
		FUNC2(&ice->reg_lock);
	}
	FUNC3(&ice->reg_lock);

	/* the first reset to the SPDIF master mode? */
	if (old_rate != new_rate && !new_rate) {
		/* notify akm chips as well */
		unsigned int i;
		if (ice->gpio.set_pro_rate)
			ice->gpio.set_pro_rate(ice, 0);
		for (i = 0; i < ice->akm_codecs; i++) {
			if (ice->akm[i].ops.set_rate_val)
				ice->akm[i].ops.set_rate_val(&ice->akm[i], 0);
		}
	}
	return old_rate != new_rate;
}