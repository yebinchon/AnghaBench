
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_tbl {int pin_sense; scalar_t__ phantom_jack; int jack_dirty; int nid; } ;
struct TYPE_2__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_1__ jacktbl; } ;


 int call_jack_callback (struct hda_codec*,struct hda_jack_tbl*) ;
 unsigned int get_jack_plug_state (int ) ;
 int jack_detect_update (struct hda_codec*,struct hda_jack_tbl*) ;
 int snd_hda_jack_report_sync (struct hda_codec*) ;

void snd_hda_jack_poll_all(struct hda_codec *codec)
{
 struct hda_jack_tbl *jack = codec->jacktbl.list;
 int i, changes = 0;

 for (i = 0; i < codec->jacktbl.used; i++, jack++) {
  unsigned int old_sense;
  if (!jack->nid || !jack->jack_dirty || jack->phantom_jack)
   continue;
  old_sense = get_jack_plug_state(jack->pin_sense);
  jack_detect_update(codec, jack);
  if (old_sense == get_jack_plug_state(jack->pin_sense))
   continue;
  changes = 1;
  call_jack_callback(codec, jack);
 }
 if (changes)
  snd_hda_jack_report_sync(codec);
}
