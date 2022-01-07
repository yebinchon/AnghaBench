
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int member_0; int const member_2; int const member_1; } ;
struct hda_codec {int dummy; } ;





 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb const*) ;

__attribute__((used)) static void cxt5047_hp_automic(struct hda_codec *codec)
{
 static const struct hda_verb mic_jack_on[] = {
  {0x15, 130, 129},
  {0x17, 130, 128},
  {}
 };
 static const struct hda_verb mic_jack_off[] = {
  {0x17, 130, 129},
  {0x15, 130, 128},
  {}
 };
 unsigned int present;

 present = snd_hda_jack_detect(codec, 0x15);
 if (present)
  snd_hda_sequence_write(codec, mic_jack_on);
 else
  snd_hda_sequence_write(codec, mic_jack_off);
}
