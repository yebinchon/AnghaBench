
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BASE_OCTAVE ;

int note_to_freq(int note_num)
{





 int note, octave, note_freq;
 static int notes[] =
 {
  261632, 277189, 293671, 311132, 329632, 349232,
  369998, 391998, 415306, 440000, 466162, 493880
 };



 octave = note_num / 12;
 note = note_num % 12;

 note_freq = notes[note];

 if (octave < 5)
  note_freq >>= (5 - octave);
 else if (octave > 5)
  note_freq <<= (octave - 5);





 return note_freq;
}
