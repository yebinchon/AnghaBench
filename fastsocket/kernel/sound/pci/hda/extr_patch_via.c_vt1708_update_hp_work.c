
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hp_outs; } ;
struct TYPE_6__ {TYPE_2__ autocfg; } ;
struct via_spec {scalar_t__ codec_type; int hp_work_active; scalar_t__ vt1708_jack_detect; TYPE_3__ gen; } ;
struct hda_codec {int jackpoll_work; TYPE_1__* bus; int jackpoll_interval; struct via_spec* spec; } ;
struct TYPE_4__ {int workq; } ;


 scalar_t__ VT1708 ;
 int hp_detect_with_aa (struct hda_codec*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int,int ) ;
 int vt1708_stop_hp_work (struct hda_codec*) ;

__attribute__((used)) static void vt1708_update_hp_work(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 if (spec->codec_type != VT1708 || !spec->gen.autocfg.hp_outs)
  return;
 if (spec->vt1708_jack_detect) {
  if (!spec->hp_work_active) {
   codec->jackpoll_interval = msecs_to_jiffies(100);
   snd_hda_codec_write(codec, 0x1, 0, 0xf81, 0);
   queue_delayed_work(codec->bus->workq,
        &codec->jackpoll_work, 0);
   spec->hp_work_active = 1;
  }
 } else if (!hp_detect_with_aa(codec))
  vt1708_stop_hp_work(codec);
}
