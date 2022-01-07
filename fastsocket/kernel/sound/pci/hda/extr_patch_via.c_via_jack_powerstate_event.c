
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int dummy; } ;
struct hda_codec {int dummy; } ;


 int set_widgets_power_state (struct hda_codec*) ;

__attribute__((used)) static void via_jack_powerstate_event(struct hda_codec *codec, struct hda_jack_tbl *tbl)
{
 set_widgets_power_state(codec);
}
