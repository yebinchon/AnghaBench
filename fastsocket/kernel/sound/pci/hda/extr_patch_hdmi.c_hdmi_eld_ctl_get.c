
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdmi_spec {int dummy; } ;
struct hdmi_eld {scalar_t__ eld_size; int lock; int eld_buffer; scalar_t__ eld_valid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_6__ {struct hdmi_eld sink_eld; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 TYPE_3__* get_pin (struct hdmi_spec*,int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int ,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_BUG () ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hdmi_eld_ctl_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_eld *eld;
 int pin_idx;

 pin_idx = kcontrol->private_value;
 eld = &get_pin(spec, pin_idx)->sink_eld;

 mutex_lock(&eld->lock);
 if (eld->eld_size > ARRAY_SIZE(ucontrol->value.bytes.data)) {
  mutex_unlock(&eld->lock);
  snd_BUG();
  return -EINVAL;
 }

 memset(ucontrol->value.bytes.data, 0,
        ARRAY_SIZE(ucontrol->value.bytes.data));
 if (eld->eld_valid)
  memcpy(ucontrol->value.bytes.data, eld->eld_buffer,
         eld->eld_size);
 mutex_unlock(&eld->lock);

 return 0;
}
