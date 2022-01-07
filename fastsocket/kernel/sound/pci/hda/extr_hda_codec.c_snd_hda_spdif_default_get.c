
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_spdif_out {int status; } ;
struct hda_codec {int spdif_mutex; int spdif_out; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_spdif_out* snd_array_elem (int *,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hda_spdif_default_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 int idx = kcontrol->private_value;
 struct hda_spdif_out *spdif;

 mutex_lock(&codec->spdif_mutex);
 spdif = snd_array_elem(&codec->spdif_out, idx);
 ucontrol->value.iec958.status[0] = spdif->status & 0xff;
 ucontrol->value.iec958.status[1] = (spdif->status >> 8) & 0xff;
 ucontrol->value.iec958.status[2] = (spdif->status >> 16) & 0xff;
 ucontrol->value.iec958.status[3] = (spdif->status >> 24) & 0xff;
 mutex_unlock(&codec->spdif_mutex);

 return 0;
}
