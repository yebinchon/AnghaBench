
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int control_mutex; } ;
struct hda_bind_ctls {unsigned long* values; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

int snd_hda_mixer_bind_ctls_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_bind_ctls *c;
 unsigned long *vals;
 int err = 0, change = 0;

 mutex_lock(&codec->control_mutex);
 c = (struct hda_bind_ctls *)kcontrol->private_value;
 for (vals = c->values; *vals; vals++) {
  kcontrol->private_value = *vals;
  err = c->ops->put(kcontrol, ucontrol);
  if (err < 0)
   break;
  change |= err;
 }
 kcontrol->private_value = (long)c;
 mutex_unlock(&codec->control_mutex);
 return err < 0 ? err : change;
}
