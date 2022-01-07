
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_azf3328 {unsigned int mixer_io; } ;


 unsigned char AZF_MUTE_BIT ;
 int SET_CHAN_LEFT ;
 int SET_CHAN_RIGHT ;
 unsigned char inb (unsigned long) ;
 int mdelay (int) ;
 int outb (unsigned char,unsigned long) ;
 int snd_azf3328_dbgcallenter () ;
 int snd_azf3328_dbgcallleave () ;

__attribute__((used)) static void
snd_azf3328_mixer_write_volume_gradually(const struct snd_azf3328 *chip,
      unsigned reg,
      unsigned char dst_vol_left,
      unsigned char dst_vol_right,
      int chan_sel, int delay
)
{
 unsigned long portbase = chip->mixer_io + reg;
 unsigned char curr_vol_left = 0, curr_vol_right = 0;
 int left_change = 0, right_change = 0;

 snd_azf3328_dbgcallenter();

 if (chan_sel & SET_CHAN_LEFT) {
  curr_vol_left = inb(portbase + 1);


  if (curr_vol_left & AZF_MUTE_BIT)
   dst_vol_left |= AZF_MUTE_BIT;
  else
   dst_vol_left &= ~AZF_MUTE_BIT;

  left_change = (curr_vol_left > dst_vol_left) ? -1 : 1;
 }

 if (chan_sel & SET_CHAN_RIGHT) {
  curr_vol_right = inb(portbase + 0);

  right_change = (curr_vol_right > dst_vol_right) ? -1 : 1;
 }

 do {
  if (left_change) {
   if (curr_vol_left != dst_vol_left) {
    curr_vol_left += left_change;
    outb(curr_vol_left, portbase + 1);
   } else
       left_change = 0;
  }
  if (right_change) {
   if (curr_vol_right != dst_vol_right) {
    curr_vol_right += right_change;




    outb(curr_vol_right, portbase + 0);
   } else
       right_change = 0;
  }
  if (delay)
   mdelay(delay);
 } while ((left_change) || (right_change));
 snd_azf3328_dbgcallleave();
}
