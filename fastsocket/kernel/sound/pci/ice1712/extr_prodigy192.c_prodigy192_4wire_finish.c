
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int VT1724_PRODIGY192_CS ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int udelay (int) ;

__attribute__((used)) static void prodigy192_4wire_finish(struct snd_ice1712 *ice, unsigned int tmp)
{
 tmp |= VT1724_PRODIGY192_CS;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(1);
 snd_ice1712_restore_gpio_status(ice);
}
