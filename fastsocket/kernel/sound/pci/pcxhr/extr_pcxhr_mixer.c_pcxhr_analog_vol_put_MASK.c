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
struct snd_pcxhr {int* analog_capture_volume; int* analog_playback_volume; TYPE_3__* mgr; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int /*<<< orphan*/  mixer_mutex; scalar_t__ is_hr_stereo; } ;

/* Variables and functions */
 int HR222_LINE_CAPTURE_LEVEL_MAX ; 
 int HR222_LINE_CAPTURE_LEVEL_MIN ; 
 int HR222_LINE_PLAYBACK_LEVEL_MAX ; 
 int HR222_LINE_PLAYBACK_LEVEL_MIN ; 
 int PCXHR_LINE_CAPTURE_LEVEL_MAX ; 
 int PCXHR_LINE_CAPTURE_LEVEL_MIN ; 
 int PCXHR_LINE_PLAYBACK_LEVEL_MAX ; 
 int PCXHR_LINE_PLAYBACK_LEVEL_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcxhr*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcxhr*,int,int) ; 
 struct snd_pcxhr* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pcxhr *chip = FUNC4(kcontrol);
	int changed = 0;
	int is_capture, i;

	FUNC1(&chip->mgr->mixer_mutex);
	is_capture = (kcontrol->private_value != 0);
	for (i = 0; i < 2; i++) {
		int  new_volume = ucontrol->value.integer.value[i];
		int *stored_volume = is_capture ?
			&chip->analog_capture_volume[i] :
			&chip->analog_playback_volume[i];
		if (is_capture) {
			if (chip->mgr->is_hr_stereo) {
				if (new_volume < HR222_LINE_CAPTURE_LEVEL_MIN ||
				    new_volume > HR222_LINE_CAPTURE_LEVEL_MAX)
					continue;
			} else {
				if (new_volume < PCXHR_LINE_CAPTURE_LEVEL_MIN ||
				    new_volume > PCXHR_LINE_CAPTURE_LEVEL_MAX)
					continue;
			}
		} else {
			if (chip->mgr->is_hr_stereo) {
				if (new_volume < HR222_LINE_PLAYBACK_LEVEL_MIN ||
				    new_volume > HR222_LINE_PLAYBACK_LEVEL_MAX)
					continue;
			} else {
				if (new_volume < PCXHR_LINE_PLAYBACK_LEVEL_MIN ||
				    new_volume > PCXHR_LINE_PLAYBACK_LEVEL_MAX)
					continue;
			}
		}
		if (*stored_volume != new_volume) {
			*stored_volume = new_volume;
			changed = 1;
			if (chip->mgr->is_hr_stereo)
				FUNC0(chip,
								is_capture, i);
			else
				FUNC3(chip,
								is_capture, i);
		}
	}
	FUNC2(&chip->mgr->mixer_mutex);
	return changed;
}