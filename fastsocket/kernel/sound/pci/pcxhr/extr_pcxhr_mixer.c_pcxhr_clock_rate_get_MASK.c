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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pcxhr_mgr {int capture_chips; int sample_rate_real; int /*<<< orphan*/  mixer_mutex; } ;

/* Variables and functions */
 int PCXHR_CLOCK_TYPE_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pcxhr_mgr*,int,int*) ; 
 struct pcxhr_mgr* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct pcxhr_mgr *mgr = FUNC3(kcontrol);
	int i, err, rate;

	FUNC0(&mgr->mixer_mutex);
	for(i = 0; i < 3 + mgr->capture_chips; i++) {
		if (i == PCXHR_CLOCK_TYPE_INTERNAL)
			rate = mgr->sample_rate_real;
		else {
			err = FUNC2(mgr, i, &rate);
			if (err)
				break;
		}
		ucontrol->value.integer.value[i] = rate;
	}
	FUNC1(&mgr->mixer_mutex);
	return 0;
}