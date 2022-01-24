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
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {unsigned int private_value; struct snd_soc_codec* private_data; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_codec *codec = kcontrol->private_data;
	unsigned int val = (ucontrol->value.enumerated.item[0] != 0);
	char *differential = "Audio Out Differential";
	char *stereo = "Audio Out Stereo";

	if (kcontrol->private_value == val)
		return 0;
	kcontrol->private_value = val;
	FUNC0(codec, val ? differential : stereo);
	FUNC2(codec);
	FUNC1(codec, val ? stereo : differential);
	FUNC2(codec);

	return 1;
}