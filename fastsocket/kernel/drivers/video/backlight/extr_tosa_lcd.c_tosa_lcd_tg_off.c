
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {struct spi_device* spi; } ;
struct spi_device {int dummy; } ;


 int TG_PINICTL ;
 int TOSA_GPIO_TG_ON ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int tosa_tg_send (struct spi_device*,int ,int) ;

__attribute__((used)) static void tosa_lcd_tg_off(struct tosa_lcd_data *data)
{
 struct spi_device *spi = data->spi;


 tosa_tg_send(spi, TG_PINICTL,0x4);
 mdelay(50);


 tosa_tg_send(spi, TG_PINICTL,0x6);
 mdelay(50);


 gpio_set_value(TOSA_GPIO_TG_ON, 1);
 mdelay(100);
}
