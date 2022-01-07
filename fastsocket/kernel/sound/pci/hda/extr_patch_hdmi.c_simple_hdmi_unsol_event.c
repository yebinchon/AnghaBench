
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int snd_hda_jack_report_sync (struct hda_codec*) ;
 int snd_hda_jack_set_dirty_all (struct hda_codec*) ;

__attribute__((used)) static void simple_hdmi_unsol_event(struct hda_codec *codec,
        unsigned int res)
{
 snd_hda_jack_set_dirty_all(codec);
 snd_hda_jack_report_sync(codec);
}
