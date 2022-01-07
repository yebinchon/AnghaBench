
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct hda_vmaster_mute_hook {int mute_mode; struct hda_codec* codec; int hook; int sw_kctl; } ;
struct hda_codec {int dummy; } ;


 int ENOMEM ;
 int HDA_VMUTE_FOLLOW_MASTER ;
 int snd_ctl_add_vmaster_hook (int ,int ,struct hda_codec*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct hda_vmaster_mute_hook*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,struct snd_kcontrol*) ;
 int vmaster_mute_mode ;

int snd_hda_add_vmaster_hook(struct hda_codec *codec,
        struct hda_vmaster_mute_hook *hook,
        bool expose_enum_ctl)
{
 struct snd_kcontrol *kctl;

 if (!hook->hook || !hook->sw_kctl)
  return 0;
 snd_ctl_add_vmaster_hook(hook->sw_kctl, hook->hook, codec);
 hook->codec = codec;
 hook->mute_mode = HDA_VMUTE_FOLLOW_MASTER;
 if (!expose_enum_ctl)
  return 0;
 kctl = snd_ctl_new1(&vmaster_mute_mode, hook);
 if (!kctl)
  return -ENOMEM;
 return snd_hda_ctl_add(codec, 0, kctl);
}
