
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {TYPE_1__* chip; } ;
struct snd_kcontrol_new {int private_value; int name; int info; int put; int get; int access; int iface; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int card; } ;


 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 int snd_ctl_boolean_mono_info ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct usb_mixer_interface*) ;
 int snd_nativeinstruments_control_get ;
 int snd_nativeinstruments_control_put ;

__attribute__((used)) static int snd_nativeinstruments_create_mixer(struct usb_mixer_interface *mixer,
           const struct snd_kcontrol_new *kc,
           unsigned int count)
{
 int i, err = 0;
 struct snd_kcontrol_new template = {
  .iface = SNDRV_CTL_ELEM_IFACE_MIXER,
  .access = SNDRV_CTL_ELEM_ACCESS_READWRITE,
  .get = snd_nativeinstruments_control_get,
  .put = snd_nativeinstruments_control_put,
  .info = snd_ctl_boolean_mono_info,
 };

 for (i = 0; i < count; i++) {
  struct snd_kcontrol *c;

  template.name = kc[i].name;
  template.private_value = kc[i].private_value;

  c = snd_ctl_new1(&template, mixer);
  err = snd_ctl_add(mixer->chip->card, c);

  if (err < 0)
   break;
 }

 return err;
}
