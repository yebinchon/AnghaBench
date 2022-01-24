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
struct snd_kcontrol {unsigned long private_value; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int /*<<< orphan*/  control_mutex; struct ca0132_spec* spec; } ;
struct ca0132_spec {long* vnode_lvol; long* vnode_rvol; } ;
typedef  size_t hda_nid_t ;

/* Variables and functions */
 unsigned long FUNC0 (size_t,int,int /*<<< orphan*/ ,int) ; 
 size_t VNODE_START_NID ; 
 int FUNC1 (struct hda_codec*,size_t,size_t*) ; 
 int FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*) ; 
 size_t FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 struct hda_codec* FUNC10 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC11(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC10(kcontrol);
	struct ca0132_spec *spec = codec->spec;
	hda_nid_t nid = FUNC4(kcontrol);
	int ch = FUNC2(kcontrol);
	long *valp = ucontrol->value.integer.value;
	hda_nid_t shared_nid = 0;
	bool effective;
	int changed = 1;

	/* store the left and right volume */
	if (ch & 1) {
		spec->vnode_lvol[nid - VNODE_START_NID] = *valp;
		valp++;
	}
	if (ch & 2) {
		spec->vnode_rvol[nid - VNODE_START_NID] = *valp;
		valp++;
	}

	/* if effective conditions, then update hw immediately. */
	effective = FUNC1(codec, nid, &shared_nid);
	if (effective) {
		int dir = FUNC3(kcontrol);
		unsigned long pval;

		FUNC9(codec);
		FUNC5(&codec->control_mutex);
		pval = kcontrol->private_value;
		kcontrol->private_value = FUNC0(shared_nid, ch,
								0, dir);
		changed = FUNC7(kcontrol, ucontrol);
		kcontrol->private_value = pval;
		FUNC6(&codec->control_mutex);
		FUNC8(codec);
	}

	return changed;
}