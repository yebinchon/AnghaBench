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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pcxhr_mgr {scalar_t__ use_clock_type; int sample_rate; int /*<<< orphan*/  mixer_mutex; int /*<<< orphan*/  setup_mutex; int /*<<< orphan*/  is_hr_stereo; scalar_t__ capture_chips; scalar_t__ board_has_aes1; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCXHR_CLOCK_TYPE_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcxhr_mgr*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcxhr_mgr*,int) ; 
 struct pcxhr_mgr* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct pcxhr_mgr *mgr = FUNC4(kcontrol);
	int rate, ret = 0;
	unsigned int clock_items = 2; /* at least Internal and AES Sync clock */
	if (mgr->board_has_aes1) {
		clock_items += mgr->capture_chips;	/* add AES x */
		if (!mgr->is_hr_stereo)
			clock_items += 1;		/* add word clock */
	}
	if (ucontrol->value.enumerated.item[0] >= clock_items)
		return -EINVAL;
	FUNC0(&mgr->mixer_mutex);
	if (mgr->use_clock_type != ucontrol->value.enumerated.item[0]) {
		FUNC0(&mgr->setup_mutex);
		mgr->use_clock_type = ucontrol->value.enumerated.item[0];
		rate = 0;
		if (mgr->use_clock_type != PCXHR_CLOCK_TYPE_INTERNAL) {
			FUNC2(mgr, mgr->use_clock_type,
						 &rate);
		} else {
			rate = mgr->sample_rate;
			if (!rate)
				rate = 48000;
		}
		if (rate) {
			FUNC3(mgr, rate);
			if (mgr->sample_rate)
				mgr->sample_rate = rate;
		}
		FUNC1(&mgr->setup_mutex);
		ret = 1; /* return 1 even if the set was not done. ok ? */
	}
	FUNC1(&mgr->mixer_mutex);
	return ret;
}