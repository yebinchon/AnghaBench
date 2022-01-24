#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int /*<<< orphan*/  count; int /*<<< orphan*/  type; } ;
struct hdmi_spec {int dummy; } ;
struct hdmi_eld {int /*<<< orphan*/  lock; int /*<<< orphan*/  eld_size; scalar_t__ eld_valid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {struct hdmi_eld sink_eld; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_TYPE_BYTES ; 
 TYPE_1__* FUNC0 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	struct hdmi_spec *spec = codec->spec;
	struct hdmi_eld *eld;
	int pin_idx;

	uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;

	pin_idx = kcontrol->private_value;
	eld = &FUNC0(spec, pin_idx)->sink_eld;

	FUNC1(&eld->lock);
	uinfo->count = eld->eld_valid ? eld->eld_size : 0;
	FUNC2(&eld->lock);

	return 0;
}