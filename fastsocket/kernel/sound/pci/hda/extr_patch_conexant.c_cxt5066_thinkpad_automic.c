
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int member_0; int member_2; int const member_1; } ;
struct hda_codec {int dummy; } ;






 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;
 int snd_hda_sequence_write (struct hda_codec*,struct hda_verb const*) ;
 int snd_printdd (char*) ;

__attribute__((used)) static void cxt5066_thinkpad_automic(struct hda_codec *codec)
{
 unsigned int ext_present, dock_present;

 static const struct hda_verb ext_mic_present[] = {
  {0x14, 131, 0},
  {0x17, 131, 1},
  {0x1b, 130, 128},
  {0x23, 130, 0},
  {0x1a, 130, 0},
  {}
 };
 static const struct hda_verb dock_mic_present[] = {
  {0x14, 131, 0},
  {0x17, 131, 0},
  {0x1a, 130, 128},
  {0x23, 130, 0},
  {0x1b, 130, 0},
  {}
 };
 static const struct hda_verb ext_mic_absent[] = {
  {0x14, 131, 2},
  {0x23, 130, 129},
  {0x1b, 130, 0},
  {0x1a, 130, 0},
  {}
 };

 ext_present = snd_hda_jack_detect(codec, 0x1b);
 dock_present = snd_hda_jack_detect(codec, 0x1a);
 if (ext_present) {
  snd_printdd("CXT5066: external microphone detected\n");
  snd_hda_sequence_write(codec, ext_mic_present);
 } else if (dock_present) {
  snd_printdd("CXT5066: dock microphone detected\n");
  snd_hda_sequence_write(codec, dock_mic_present);
 } else {
  snd_printdd("CXT5066: external microphone absent\n");
  snd_hda_sequence_write(codec, ext_mic_absent);
 }
}
