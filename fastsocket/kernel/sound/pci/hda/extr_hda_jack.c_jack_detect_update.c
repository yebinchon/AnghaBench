
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int jack_dirty; scalar_t__ gated_jack; int pin_sense; scalar_t__ gating_jack; int nid; scalar_t__ phantom_jack; } ;
struct hda_codec {int dummy; } ;


 int AC_PINSENSE_PRESENCE ;
 int read_pin_sense (struct hda_codec*,int ) ;
 int snd_hda_jack_detect (struct hda_codec*,scalar_t__) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,scalar_t__) ;

__attribute__((used)) static void jack_detect_update(struct hda_codec *codec,
          struct hda_jack_tbl *jack)
{
 if (!jack->jack_dirty)
  return;

 if (jack->phantom_jack)
  jack->pin_sense = AC_PINSENSE_PRESENCE;
 else
  jack->pin_sense = read_pin_sense(codec, jack->nid);


 if (jack->gating_jack && !snd_hda_jack_detect(codec, jack->gating_jack))
  jack->pin_sense &= ~AC_PINSENSE_PRESENCE;

 jack->jack_dirty = 0;


 if (jack->gated_jack) {
  struct hda_jack_tbl *gated =
   snd_hda_jack_tbl_get(codec, jack->gated_jack);
  if (gated) {
   gated->jack_dirty = 1;
   jack_detect_update(codec, gated);
  }
 }
}
