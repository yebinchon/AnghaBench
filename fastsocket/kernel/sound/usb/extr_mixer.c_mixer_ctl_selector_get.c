
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_elem_info {int control; TYPE_1__* mixer; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_5__ {int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {scalar_t__ ignore_ctl_error; } ;


 int get_cur_ctl_value (struct usb_mixer_elem_info*,int,int*) ;
 int get_relative_value (struct usb_mixer_elem_info*,int) ;

__attribute__((used)) static int mixer_ctl_selector_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *cval = kcontrol->private_data;
 int val, err;

 err = get_cur_ctl_value(cval, cval->control << 8, &val);
 if (err < 0) {
  if (cval->mixer->ignore_ctl_error) {
   ucontrol->value.enumerated.item[0] = 0;
   return 0;
  }
  return err;
 }
 val = get_relative_value(cval, val);
 ucontrol->value.enumerated.item[0] = val;
 return 0;
}
