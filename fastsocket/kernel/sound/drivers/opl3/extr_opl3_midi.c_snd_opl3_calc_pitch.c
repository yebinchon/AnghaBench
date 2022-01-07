
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int midi_pitchbend; } ;


 int OPL3_BLOCKNUM_MASK ;
 int OPL3_FNUM_HIGH_MASK ;
 int* opl3_note_table ;

__attribute__((used)) static void snd_opl3_calc_pitch(unsigned char *fnum, unsigned char *blocknum,
    int note, struct snd_midi_channel *chan)
{
 int block = ((note / 12) & 0x07) - 1;
 int idx = (note % 12) + 2;
 int freq;

 if (chan->midi_pitchbend) {
  int pitchbend = chan->midi_pitchbend;
  int segment;

  if (pitchbend > 0x1FFF)
   pitchbend = 0x1FFF;

  segment = pitchbend / 0x1000;
  freq = opl3_note_table[idx+segment];
  freq += ((opl3_note_table[idx+segment+1] - freq) *
    (pitchbend % 0x1000)) / 0x1000;
 } else {
  freq = opl3_note_table[idx];
 }

 *fnum = (unsigned char) freq;
 *blocknum = ((freq >> 8) & OPL3_FNUM_HIGH_MASK) |
  ((block << 2) & OPL3_BLOCKNUM_MASK);
}
