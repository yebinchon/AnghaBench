
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int VT1724_PRODIGY192_CCLK ;
 unsigned int VT1724_PRODIGY192_CDOUT ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void write_data(struct snd_ice1712 *ice, unsigned int gpio,
         unsigned int data, int idx)
{
 for (; idx >= 0; idx--) {

  gpio &= ~VT1724_PRODIGY192_CCLK;
  snd_ice1712_gpio_write(ice, gpio);
  udelay(1);

  if (data & (1 << idx))
   gpio |= VT1724_PRODIGY192_CDOUT;
  else
   gpio &= ~VT1724_PRODIGY192_CDOUT;
  snd_ice1712_gpio_write(ice, gpio);
  udelay(1);

  gpio |= VT1724_PRODIGY192_CCLK;
  snd_ice1712_gpio_write(ice, gpio);
  udelay(1);
 }
}
