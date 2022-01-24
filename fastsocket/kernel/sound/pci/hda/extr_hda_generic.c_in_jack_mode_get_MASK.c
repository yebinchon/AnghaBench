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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_PINCTL_VREFEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			    struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	hda_nid_t nid = kcontrol->private_value;
	unsigned int vref_caps = FUNC1(codec, nid);
	unsigned int idx;

	idx = FUNC2(codec, nid) & AC_PINCTL_VREFEN;
	ucontrol->value.enumerated.item[0] = FUNC0(vref_caps, idx);
	return 0;
}