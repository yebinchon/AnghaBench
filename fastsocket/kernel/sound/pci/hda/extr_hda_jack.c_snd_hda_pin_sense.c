
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_jack_tbl {int pin_sense; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int jack_detect_update (struct hda_codec*,struct hda_jack_tbl*) ;
 int read_pin_sense (struct hda_codec*,int ) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;

u32 snd_hda_pin_sense(struct hda_codec *codec, hda_nid_t nid)
{
 struct hda_jack_tbl *jack = snd_hda_jack_tbl_get(codec, nid);
 if (jack) {
  jack_detect_update(codec, jack);
  return jack->pin_sense;
 }
 return read_pin_sense(codec, nid);
}
