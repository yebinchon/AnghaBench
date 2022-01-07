
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;
struct hdmi_spec {int dummy; } ;
struct hdmi_eld {int lock; int eld_size; scalar_t__ eld_valid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {struct hdmi_eld sink_eld; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;
 TYPE_1__* get_pin (struct hdmi_spec*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hdmi_eld_ctl_info(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_eld *eld;
 int pin_idx;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;

 pin_idx = kcontrol->private_value;
 eld = &get_pin(spec, pin_idx)->sink_eld;

 mutex_lock(&eld->lock);
 uinfo->count = eld->eld_valid ? eld->eld_size : 0;
 mutex_unlock(&eld->lock);

 return 0;
}
