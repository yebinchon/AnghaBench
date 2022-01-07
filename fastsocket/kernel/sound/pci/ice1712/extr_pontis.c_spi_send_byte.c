
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int PONTIS_CS_CLK ;
 int PONTIS_CS_WDATA ;
 int set_gpio_bit (struct snd_ice1712*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void spi_send_byte(struct snd_ice1712 *ice, unsigned char data)
{
 int i;
 for (i = 0; i < 8; i++) {
  set_gpio_bit(ice, PONTIS_CS_CLK, 0);
  udelay(1);
  set_gpio_bit(ice, PONTIS_CS_WDATA, data & 0x80);
  udelay(1);
  set_gpio_bit(ice, PONTIS_CS_CLK, 1);
  udelay(1);
  data <<= 1;
 }
}
