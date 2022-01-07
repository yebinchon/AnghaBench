
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct hda_multi_out {int dig_out_nid; } ;
struct hda_codec {int dummy; } ;


 int ENOMEM ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct hda_multi_out*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,struct snd_kcontrol*) ;
 int spdif_share_sw ;

int snd_hda_create_spdif_share_sw(struct hda_codec *codec,
      struct hda_multi_out *mout)
{
 struct snd_kcontrol *kctl;

 if (!mout->dig_out_nid)
  return 0;

 kctl = snd_ctl_new1(&spdif_share_sw, mout);
 if (!kctl)
  return -ENOMEM;

 return snd_hda_ctl_add(codec, mout->dig_out_nid, kctl);
}
