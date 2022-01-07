
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_elem_info {int cmask; TYPE_1__* mixer; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {scalar_t__ ignore_ctl_error; } ;


 int MAX_CHANNELS ;
 int get_abs_value (struct usb_mixer_elem_info*,int) ;
 int get_cur_mix_value (struct usb_mixer_elem_info*,int,int,int*) ;
 int set_cur_mix_value (struct usb_mixer_elem_info*,int,int,int) ;

__attribute__((used)) static int mixer_ctl_feature_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *cval = kcontrol->private_data;
 int c, cnt, val, oval, err;
 int changed = 0;

 if (cval->cmask) {
  cnt = 0;
  for (c = 0; c < MAX_CHANNELS; c++) {
   if (!(cval->cmask & (1 << c)))
    continue;
   err = get_cur_mix_value(cval, c + 1, cnt, &oval);
   if (err < 0)
    return cval->mixer->ignore_ctl_error ? 0 : err;
   val = ucontrol->value.integer.value[cnt];
   val = get_abs_value(cval, val);
   if (oval != val) {
    set_cur_mix_value(cval, c + 1, cnt, val);
    changed = 1;
   }
   cnt++;
  }
 } else {

  err = get_cur_mix_value(cval, 0, 0, &oval);
  if (err < 0)
   return cval->mixer->ignore_ctl_error ? 0 : err;
  val = ucontrol->value.integer.value[0];
  val = get_abs_value(cval, val);
  if (val != oval) {
   set_cur_mix_value(cval, 0, 0, val);
   changed = 1;
  }
 }
 return changed;
}
