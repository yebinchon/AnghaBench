
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int thru_bits; int* channel_map; scalar_t__ passthru; } ;


 int RME9652_NCHANNELS ;
 scalar_t__ RME9652_thru_base ;
 int rme9652_write (struct snd_rme9652*,scalar_t__,int) ;

__attribute__((used)) static void rme9652_set_thru(struct snd_rme9652 *rme9652, int channel, int enable)
{
 int i;

 rme9652->passthru = 0;

 if (channel < 0) {



  if (enable) {
   for (i = 0; i < RME9652_NCHANNELS; i++) {
    rme9652->thru_bits |= (1 << i);
    rme9652_write(rme9652, RME9652_thru_base + i * 4, 1);
   }
  } else {
   for (i = 0; i < RME9652_NCHANNELS; i++) {
    rme9652->thru_bits &= ~(1 << i);
    rme9652_write(rme9652, RME9652_thru_base + i * 4, 0);
   }
  }

 } else {
  int mapped_channel;

  mapped_channel = rme9652->channel_map[channel];

  if (enable) {
   rme9652->thru_bits |= (1 << mapped_channel);
  } else {
   rme9652->thru_bits &= ~(1 << mapped_channel);
  }

  rme9652_write(rme9652,
          RME9652_thru_base + mapped_channel * 4,
          enable ? 1 : 0);
 }
}
