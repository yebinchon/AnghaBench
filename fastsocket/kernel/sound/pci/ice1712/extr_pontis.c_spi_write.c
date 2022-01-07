
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_mask; int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 int PONTIS_CS_CLK ;
 int PONTIS_CS_CS ;
 int PONTIS_CS_WDATA ;
 int set_gpio_bit (struct snd_ice1712*,int,int) ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,int) ;
 int snd_ice1712_gpio_set_mask (struct snd_ice1712*,int) ;
 int spi_send_byte (struct snd_ice1712*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void spi_write(struct snd_ice1712 *ice, unsigned int dev, unsigned int reg, unsigned int data)
{
 snd_ice1712_gpio_set_dir(ice, PONTIS_CS_CS|PONTIS_CS_WDATA|PONTIS_CS_CLK);
 snd_ice1712_gpio_set_mask(ice, ~(PONTIS_CS_CS|PONTIS_CS_WDATA|PONTIS_CS_CLK));
 set_gpio_bit(ice, PONTIS_CS_CS, 0);
 spi_send_byte(ice, dev & ~1);
 spi_send_byte(ice, reg);
 spi_send_byte(ice, data);

 set_gpio_bit(ice, PONTIS_CS_CS, 1);
 udelay(1);

 snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
 snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
}
