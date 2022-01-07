
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {scalar_t__ inv_jack_detect; int no_trigger_sense; } ;
typedef int hda_nid_t ;


 int AC_PINCAP_TRIG_REQ ;
 int AC_PINSENSE_PRESENCE ;
 int AC_VERB_GET_PIN_SENSE ;
 int AC_VERB_SET_PIN_SENSE ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static u32 read_pin_sense(struct hda_codec *codec, hda_nid_t nid)
{
 u32 pincap;
 u32 val;

 if (!codec->no_trigger_sense) {
  pincap = snd_hda_query_pin_caps(codec, nid);
  if (pincap & AC_PINCAP_TRIG_REQ)
   snd_hda_codec_read(codec, nid, 0,
     AC_VERB_SET_PIN_SENSE, 0);
 }
 val = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_PIN_SENSE, 0);
 if (codec->inv_jack_detect)
  val ^= AC_PINSENSE_PRESENCE;
 return val;
}
