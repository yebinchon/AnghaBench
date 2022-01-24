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
typedef  scalar_t__ u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_spdif_out {scalar_t__ nid; unsigned short ctls; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; int /*<<< orphan*/  spdif_out; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 unsigned short AC_DIG1_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,scalar_t__,unsigned short,int) ; 
 struct hda_spdif_out* FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct hda_codec* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC4(kcontrol);
	int idx = kcontrol->private_value;
	struct hda_spdif_out *spdif;
	hda_nid_t nid;
	unsigned short val;
	int change;

	FUNC0(&codec->spdif_mutex);
	spdif = FUNC3(&codec->spdif_out, idx);
	nid = spdif->nid;
	val = spdif->ctls & ~AC_DIG1_ENABLE;
	if (ucontrol->value.integer.value[0])
		val |= AC_DIG1_ENABLE;
	change = spdif->ctls != val;
	spdif->ctls = val;
	if (change && nid != (u16)-1)
		FUNC2(codec, nid, val & 0xff, -1);
	FUNC1(&codec->spdif_mutex);
	return change;
}