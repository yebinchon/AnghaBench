
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int __snd_hda_jack_add_kctl (struct hda_codec*,int ,char const*,int,int) ;

int snd_hda_jack_add_kctl(struct hda_codec *codec, hda_nid_t nid,
     const char *name, int idx)
{
 return __snd_hda_jack_add_kctl(codec, nid, name, idx, 0);
}
