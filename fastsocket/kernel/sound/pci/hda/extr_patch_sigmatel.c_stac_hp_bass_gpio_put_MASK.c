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
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct sigmatel_spec {int gpio_data; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_mask; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;

/* Variables and functions */
 struct hda_codec* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC0(kcontrol);
	struct sigmatel_spec *spec = codec->spec;
	unsigned int gpio_data;

	gpio_data = (spec->gpio_data & ~0x20) |
		(ucontrol->value.integer.value[0] ? 0x20 : 0);
	if (gpio_data == spec->gpio_data)
		return 0;
	spec->gpio_data = gpio_data;
	FUNC1(codec, spec->gpio_mask, spec->gpio_dir, spec->gpio_data);
	return 1;
}