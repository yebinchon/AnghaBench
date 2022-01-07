
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int cap_sync_hook; } ;
struct alc_spec {int inv_dmic_fixup; TYPE_1__ gen; int inv_dmic_pin; scalar_t__ inv_dmic_muted; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int alc_inv_dmic_hook ;
 int alc_inv_dmic_sw ;
 int snd_hda_gen_add_kctl (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int alc_add_inv_dmic_mixer(struct hda_codec *codec, hda_nid_t nid)
{
 struct alc_spec *spec = codec->spec;

 if (!snd_hda_gen_add_kctl(&spec->gen, ((void*)0), &alc_inv_dmic_sw))
  return -ENOMEM;
 spec->inv_dmic_fixup = 1;
 spec->inv_dmic_muted = 0;
 spec->inv_dmic_pin = nid;
 spec->gen.cap_sync_hook = alc_inv_dmic_hook;
 return 0;
}
