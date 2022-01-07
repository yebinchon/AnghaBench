
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int VT1724_REVO_CCLK ;
 int VT1724_REVO_CDIN ;
 int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned char read_data(struct snd_ice1712 *ice, unsigned int gpio,
          int idx)
{
 unsigned char data = 0;

 for (; idx >= 0; idx--) {

  gpio &= ~VT1724_REVO_CCLK;
  snd_ice1712_gpio_write(ice, gpio);
  udelay(1);

  if (snd_ice1712_gpio_read(ice) & VT1724_REVO_CDIN)
   data |= (1 << idx);
  udelay(1);

  gpio |= VT1724_REVO_CCLK;
  snd_ice1712_gpio_write(ice, gpio);
  udelay(1);
 }
 return data;
}
