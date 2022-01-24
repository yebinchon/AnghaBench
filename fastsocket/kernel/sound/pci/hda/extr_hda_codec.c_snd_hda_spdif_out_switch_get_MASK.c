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
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_spdif_out {int ctls; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; int /*<<< orphan*/  spdif_out; } ;

/* Variables and functions */
 int AC_DIG1_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hda_spdif_out* FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	int idx = kcontrol->private_value;
	struct hda_spdif_out *spdif;

	FUNC0(&codec->spdif_mutex);
	spdif = FUNC2(&codec->spdif_out, idx);
	ucontrol->value.integer.value[0] = spdif->ctls & AC_DIG1_ENABLE;
	FUNC1(&codec->spdif_mutex);
	return 0;
}