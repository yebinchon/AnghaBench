
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void snd_emu10k1_fx8010_playback_tram_poke1(unsigned short *dst_left,
         unsigned short *dst_right,
         unsigned short *src,
         unsigned int count,
         unsigned int tram_shift)
{





 if ((tram_shift & 1) == 0) {
  while (count--) {
   *dst_left-- = *src++;
   *dst_right-- = *src++;
  }
 } else {
  while (count--) {
   *dst_right-- = *src++;
   *dst_left-- = *src++;
  }
 }
}
