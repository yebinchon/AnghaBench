
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_mask; int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 int AK4396_ADDR ;
 int AK4396_CCLK ;
 int AK4396_CDTI ;
 int AK4396_CSN ;
 int ak4396_send_word (struct snd_ice1712*,unsigned int) ;
 int set_gpio_bit (struct snd_ice1712*,int,int) ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,int) ;
 int snd_ice1712_gpio_set_mask (struct snd_ice1712*,int) ;
 int udelay (int) ;

__attribute__((used)) static void ak4396_write(struct snd_ice1712 *ice, unsigned int reg,
    unsigned int data)
{
 unsigned int block;

 snd_ice1712_gpio_set_dir(ice, AK4396_CSN|AK4396_CCLK|AK4396_CDTI);
 snd_ice1712_gpio_set_mask(ice, ~(AK4396_CSN|AK4396_CCLK|AK4396_CDTI));

 set_gpio_bit(ice, AK4396_CSN, 0);
 block = ((AK4396_ADDR & 0x03) << 14) | (1 << 13) |
   ((reg & 0x1f) << 8) | (data & 0xff);
 ak4396_send_word(ice, block);

 set_gpio_bit(ice, AK4396_CSN, 1);
 udelay(1);

 snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
 snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
}
