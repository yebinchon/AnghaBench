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
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdmi_spec {int dummy; } ;
struct hdmi_eld {scalar_t__ eld_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  eld_buffer; scalar_t__ eld_valid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_6__ {struct hdmi_eld sink_eld; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 TYPE_3__* FUNC1 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct hda_codec* FUNC7 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC7(kcontrol);
	struct hdmi_spec *spec = codec->spec;
	struct hdmi_eld *eld;
	int pin_idx;

	pin_idx = kcontrol->private_value;
	eld = &FUNC1(spec, pin_idx)->sink_eld;

	FUNC4(&eld->lock);
	if (eld->eld_size > FUNC0(ucontrol->value.bytes.data)) {
		FUNC5(&eld->lock);
		FUNC6();
		return -EINVAL;
	}

	FUNC3(ucontrol->value.bytes.data, 0,
	       FUNC0(ucontrol->value.bytes.data));
	if (eld->eld_valid)
		FUNC2(ucontrol->value.bytes.data, eld->eld_buffer,
		       eld->eld_size);
	FUNC5(&eld->lock);

	return 0;
}