
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int DATA ;
 int ICE1712_IREG_GPIO_WRITE_MASK ;
 int ICEREG (struct snd_ice1712*,int ) ;
 int inb (int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned int) ;

__attribute__((used)) static void snd_ice1712_set_gpio_mask(struct snd_ice1712 *ice, unsigned int data)
{
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_WRITE_MASK, data);
 inb(ICEREG(ice, DATA));
}
