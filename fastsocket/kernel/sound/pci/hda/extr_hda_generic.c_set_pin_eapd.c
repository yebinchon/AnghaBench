
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {scalar_t__ keep_eapd_on; scalar_t__ own_eapd_ctl; } ;
struct hda_codec {scalar_t__ inv_eapd; struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int AC_PINCAP_EAPD ;
 int AC_VERB_SET_EAPD_BTLENABLE ;
 int snd_hda_codec_update_cache (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static void set_pin_eapd(struct hda_codec *codec, hda_nid_t pin, bool enable)
{
 struct hda_gen_spec *spec = codec->spec;
 if (spec->own_eapd_ctl ||
     !(snd_hda_query_pin_caps(codec, pin) & AC_PINCAP_EAPD))
  return;
 if (codec->inv_eapd)
  enable = !enable;
 if (spec->keep_eapd_on && !enable)
  return;
 snd_hda_codec_update_cache(codec, pin, 0,
       AC_VERB_SET_EAPD_BTLENABLE,
       enable ? 0x02 : 0x00);
}
