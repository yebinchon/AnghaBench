
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int mtc_state; } ;


 int MIDI_IN_SKIP_DATA ;





__attribute__((used)) static inline int mtc_process_data(struct echoaudio *chip, short midi_byte)
{
 switch (chip->mtc_state) {
 case 130:
  if (midi_byte == 0xF1)
   chip->mtc_state = 129;
  break;
 case 129:
  chip->mtc_state = 128;
  return MIDI_IN_SKIP_DATA;
  break;
 case 128:
  chip->mtc_state = 131;
  return MIDI_IN_SKIP_DATA;
  break;
 case 131:
  chip->mtc_state = 130;
  break;
 }
 return 0;
}
