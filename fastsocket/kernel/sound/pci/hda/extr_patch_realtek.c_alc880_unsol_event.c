
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int snd_hda_jack_unsol_event (struct hda_codec*,unsigned int) ;

__attribute__((used)) static void alc880_unsol_event(struct hda_codec *codec, unsigned int res)
{


 snd_hda_jack_unsol_event(codec, res >> 2);
}
