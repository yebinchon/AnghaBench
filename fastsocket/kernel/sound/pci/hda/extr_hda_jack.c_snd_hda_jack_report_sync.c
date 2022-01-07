
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_jack_tbl {int type; scalar_t__ jack; int kctl; int pin_sense; scalar_t__ nid; } ;
struct TYPE_3__ {int used; struct hda_jack_tbl* list; } ;
struct hda_codec {TYPE_2__* bus; TYPE_1__ jacktbl; } ;
struct TYPE_4__ {int card; } ;


 int get_jack_plug_state (int ) ;
 int jack_detect_update (struct hda_codec*,struct hda_jack_tbl*) ;
 int snd_jack_report (scalar_t__,int ) ;
 int snd_kctl_jack_report (int ,int ,int) ;

void snd_hda_jack_report_sync(struct hda_codec *codec)
{
 struct hda_jack_tbl *jack;
 int i, state;


 jack = codec->jacktbl.list;
 for (i = 0; i < codec->jacktbl.used; i++, jack++)
  if (jack->nid)
   jack_detect_update(codec, jack);




 jack = codec->jacktbl.list;
 for (i = 0; i < codec->jacktbl.used; i++, jack++)
  if (jack->nid) {
   if (!jack->kctl)
    continue;
   state = get_jack_plug_state(jack->pin_sense);
   snd_kctl_jack_report(codec->bus->card, jack->kctl, state);





  }
}
