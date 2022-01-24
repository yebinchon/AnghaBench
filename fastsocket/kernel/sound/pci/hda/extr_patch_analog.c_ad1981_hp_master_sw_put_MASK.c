#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {scalar_t__ cur_eapd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_AMP_MUTE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int /*<<< orphan*/  PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	struct ad198x_spec *spec = codec->spec;

	if (! FUNC0(kcontrol, ucontrol))
		return 0;
	/* change speaker pin appropriately */
	FUNC2(codec, 0x05, spec->cur_eapd ? PIN_OUT : 0);
	/* toggle HP mute appropriately */
	FUNC1(codec, 0x06, HDA_OUTPUT, 0,
				 HDA_AMP_MUTE,
				 spec->cur_eapd ? 0 : HDA_AMP_MUTE);
	return 1;
}