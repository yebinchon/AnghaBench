
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct hda_verb {int member_0; int member_2; int const member_1; } const hda_verb ;
struct hda_codec {int dummy; } ;





 int PIN_VREF80 ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb const*) ;
 int snd_printdd (char*) ;

__attribute__((used)) static void cxt5066_ideapad_automic(struct hda_codec *codec)
{
 unsigned int present;

 struct hda_verb ext_mic_present[] = {
  {0x14, 130, 0},
  {0x1b, 129, PIN_VREF80},
  {0x23, 129, 0},
  {}
 };
 static const struct hda_verb ext_mic_absent[] = {
  {0x14, 130, 2},
  {0x23, 129, 128},
  {0x1b, 129, 0},
  {}
 };

 present = snd_hda_jack_detect(codec, 0x1b);
 if (present) {
  snd_printdd("CXT5066: external microphone detected\n");
  snd_hda_sequence_write(codec, ext_mic_present);
 } else {
  snd_printdd("CXT5066: external microphone absent\n");
  snd_hda_sequence_write(codec, ext_mic_absent);
 }
}
