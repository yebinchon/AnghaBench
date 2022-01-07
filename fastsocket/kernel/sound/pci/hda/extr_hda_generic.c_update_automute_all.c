
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int call_hp_automute (struct hda_codec*,int *) ;
 int call_line_automute (struct hda_codec*,int *) ;
 int call_mic_autoswitch (struct hda_codec*,int *) ;

__attribute__((used)) static void update_automute_all(struct hda_codec *codec)
{
 call_hp_automute(codec, ((void*)0));
 call_line_automute(codec, ((void*)0));
 call_mic_autoswitch(codec, ((void*)0));
}
