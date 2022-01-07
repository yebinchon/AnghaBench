
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int jack_dirty; } ;
struct hda_codec {int dummy; } ;


 unsigned int AC_UNSOL_RES_TAG_SHIFT ;
 int call_jack_callback (struct hda_codec*,struct hda_jack_tbl*) ;
 int snd_hda_jack_report_sync (struct hda_codec*) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get_from_tag (struct hda_codec*,int) ;

void snd_hda_jack_unsol_event(struct hda_codec *codec, unsigned int res)
{
 struct hda_jack_tbl *event;
 int tag = (res >> AC_UNSOL_RES_TAG_SHIFT) & 0x7f;

 event = snd_hda_jack_tbl_get_from_tag(codec, tag);
 if (!event)
  return;
 event->jack_dirty = 1;

 call_jack_callback(codec, event);
 snd_hda_jack_report_sync(codec);
}
