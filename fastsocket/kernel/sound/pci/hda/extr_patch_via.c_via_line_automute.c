
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int dummy; } ;
struct hda_codec {int dummy; } ;


 int set_widgets_power_state (struct hda_codec*) ;
 int snd_hda_gen_line_automute (struct hda_codec*,struct hda_jack_tbl*) ;

__attribute__((used)) static void via_line_automute(struct hda_codec *codec, struct hda_jack_tbl *tbl)
{
 set_widgets_power_state(codec);
 snd_hda_gen_line_automute(codec, tbl);
}
