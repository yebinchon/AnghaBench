
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int vx_calc_clock_from_freq(struct vx_core *chip, int freq)
{
 int hexfreq;

 if (snd_BUG_ON(freq <= 0))
  return 0;

 hexfreq = (28224000 * 10) / freq;
 hexfreq = (hexfreq + 5) / 10;


 if (snd_BUG_ON(hexfreq <= 0x00000200))
  return 0;

 if (hexfreq <= 0x03ff)
  return hexfreq - 0x00000201;
 if (hexfreq <= 0x07ff)
  return (hexfreq / 2) - 1;
 if (hexfreq <= 0x0fff)
  return (hexfreq / 4) + 0x000001ff;

 return 0x5fe;
}
