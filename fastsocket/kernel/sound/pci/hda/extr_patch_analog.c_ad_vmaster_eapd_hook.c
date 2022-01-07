
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int eapd_nid; } ;


 int AC_VERB_SET_EAPD_BTLENABLE ;
 int snd_hda_codec_update_cache (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void ad_vmaster_eapd_hook(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct ad198x_spec *spec = codec->spec;

 if (!spec->eapd_nid)
  return;
 snd_hda_codec_update_cache(codec, spec->eapd_nid, 0,
       AC_VERB_SET_EAPD_BTLENABLE,
       enabled ? 0x02 : 0x00);
}
