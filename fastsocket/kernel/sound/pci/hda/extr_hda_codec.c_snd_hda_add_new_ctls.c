
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int iface; scalar_t__ name; int index; } ;
struct TYPE_2__ {int device; int index; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct hda_codec {int addr; } ;


 int ENOMEM ;
 int find_empty_mixer_ctl_idx (struct hda_codec*,scalar_t__,int ) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new const*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,struct snd_kcontrol*) ;

int snd_hda_add_new_ctls(struct hda_codec *codec,
    const struct snd_kcontrol_new *knew)
{
 int err;

 for (; knew->name; knew++) {
  struct snd_kcontrol *kctl;
  int addr = 0, idx = 0;
  if (knew->iface == -1)
   continue;
  for (;;) {
   kctl = snd_ctl_new1(knew, codec);
   if (!kctl)
    return -ENOMEM;
   if (addr > 0)
    kctl->id.device = addr;
   if (idx > 0)
    kctl->id.index = idx;
   err = snd_hda_ctl_add(codec, 0, kctl);
   if (!err)
    break;




   if (!addr && codec->addr)
    addr = codec->addr;
   else if (!idx && !knew->index) {
    idx = find_empty_mixer_ctl_idx(codec,
              knew->name, 0);
    if (idx <= 0)
     return err;
   } else
    return err;
  }
 }
 return 0;
}
