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
typedef  int u8 ;
struct usb_mixer_interface {int xonar_u1_status; TYPE_3__* chip; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_OTHER ; 
 int USB_TYPE_VENDOR ; 
 struct usb_mixer_interface* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_interface *mixer = FUNC0(kcontrol);
	u8 old_status, new_status;
	int err, changed;

	old_status = mixer->xonar_u1_status;
	if (ucontrol->value.integer.value[0])
		new_status = old_status | 0x02;
	else
		new_status = old_status & ~0x02;
	changed = new_status != old_status;
	err = FUNC1(mixer->chip->dev,
			      FUNC2(mixer->chip->dev, 0), 0x08,
			      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
			      50, 0, &new_status, 1);
	if (err < 0)
		return err;
	mixer->xonar_u1_status = new_status;
	return changed;
}