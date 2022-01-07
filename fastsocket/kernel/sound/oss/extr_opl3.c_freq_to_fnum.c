
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void freq_to_fnum (int freq, int *block, int *fnum)
{
 int f, octave;
 f = freq;

 octave = 5;

 if (f == 0)
  octave = 0;
 else if (f < 261)
 {
  while (f < 261)
  {
   octave--;
   f <<= 1;
  }
 }
 else if (f > 493)
 {
  while (f > 493)
  {
    octave++;
    f >>= 1;
  }
 }

 if (octave > 7)
  octave = 7;

 *fnum = freq * (1 << (20 - octave)) / 49716;
 *block = octave;
}
