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
struct usb_mixer_elem_info {int control; TYPE_1__* mixer; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {scalar_t__ ignore_ctl_error; } ;

/* Variables and functions */
 int FUNC0 (struct usb_mixer_elem_info*,int) ; 
 int FUNC1 (struct usb_mixer_elem_info*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_mixer_elem_info*,int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_info *cval = kcontrol->private_data;
	int val, oval, err;

	err = FUNC1(cval, cval->control << 8, &oval);
	if (err < 0) {
		if (cval->mixer->ignore_ctl_error)
			return 0;
		return err;
	}
	val = ucontrol->value.integer.value[0];
	val = FUNC0(cval, val);
	if (val != oval) {
		FUNC2(cval, cval->control << 8, val);
		return 1;
	}
	return 0;
}