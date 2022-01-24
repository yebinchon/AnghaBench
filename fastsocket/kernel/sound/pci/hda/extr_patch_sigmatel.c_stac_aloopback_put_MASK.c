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
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct sigmatel_spec {unsigned int aloopback_mask; unsigned int aloopback; unsigned int aloopback_shift; } ;
struct hda_codec {int /*<<< orphan*/  afg; struct sigmatel_spec* spec; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 struct hda_codec* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC5(kcontrol);
	struct sigmatel_spec *spec = codec->spec;
	unsigned int idx = FUNC0(kcontrol, &ucontrol->id);
	unsigned int dac_mode;
	unsigned int val, idx_val;

	idx_val = spec->aloopback_mask << idx;
	if (ucontrol->value.integer.value[0])
		val = spec->aloopback | idx_val;
	else
		val = spec->aloopback & ~idx_val;
	if (spec->aloopback == val)
		return 0;

	spec->aloopback = val;

	/* Only return the bits defined by the shift value of the
	 * first two bytes of the mask
	 */
	dac_mode = FUNC1(codec, codec->afg, 0,
				      kcontrol->private_value & 0xFFFF, 0x0);
	dac_mode >>= spec->aloopback_shift;

	if (spec->aloopback & idx_val) {
		FUNC4(codec);
		dac_mode |= idx_val;
	} else {
		FUNC3(codec);
		dac_mode &= ~idx_val;
	}

	FUNC2(codec, codec->afg, 0,
		kcontrol->private_value >> 16, dac_mode);

	return 1;
}