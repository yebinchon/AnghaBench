
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int WM8766_SPI_CLK ;
 int WM8766_SPI_MD ;
 int set_gpio_bit (struct snd_ice1712*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void wm8766_spi_send_word(struct snd_ice1712 *ice, unsigned int data)
{
 int i;
 for (i = 0; i < 16; i++) {
  set_gpio_bit(ice, WM8766_SPI_CLK, 0);
  udelay(1);
  set_gpio_bit(ice, WM8766_SPI_MD, data & 0x8000);
  udelay(1);
  set_gpio_bit(ice, WM8766_SPI_CLK, 1);
  udelay(1);
  data <<= 1;
 }
}
