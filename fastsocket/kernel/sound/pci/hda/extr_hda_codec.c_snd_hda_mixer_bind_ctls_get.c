
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int control_mutex; } ;
struct hda_bind_ctls {long* values; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

int snd_hda_mixer_bind_ctls_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_bind_ctls *c;
 int err;

 mutex_lock(&codec->control_mutex);
 c = (struct hda_bind_ctls *)kcontrol->private_value;
 kcontrol->private_value = *c->values;
 err = c->ops->get(kcontrol, ucontrol);
 kcontrol->private_value = (long)c;
 mutex_unlock(&codec->control_mutex);
 return err;
}
