
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PINCAP_EAPD ;
 int AC_VERB_SET_EAPD_BTLENABLE ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static void cx_auto_turn_eapd(struct hda_codec *codec, int num_pins,
         hda_nid_t *pins, bool on)
{
 int i;
 for (i = 0; i < num_pins; i++) {
  if (snd_hda_query_pin_caps(codec, pins[i]) & AC_PINCAP_EAPD)
   snd_hda_codec_write(codec, pins[i], 0,
         AC_VERB_SET_EAPD_BTLENABLE,
         on ? 0x02 : 0);
 }
}
