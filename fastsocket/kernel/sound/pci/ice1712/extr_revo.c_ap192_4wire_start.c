
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int VT1724_REVO_CCLK ;
 unsigned int VT1724_REVO_CS0 ;
 unsigned int VT1724_REVO_CS1 ;
 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int ap192_4wire_start(struct snd_ice1712 *ice)
{
 unsigned int tmp;

 snd_ice1712_save_gpio_status(ice);
 tmp = snd_ice1712_gpio_read(ice);
 tmp |= VT1724_REVO_CCLK;
 tmp |= VT1724_REVO_CS0;
 tmp &= ~VT1724_REVO_CS1;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);
 return tmp;
}
