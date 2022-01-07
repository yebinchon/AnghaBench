
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {int spi; } ;


 int TG_GPOSR ;
 int TG_TPOSCTL ;
 int TOSA_GPIO_TG_ON ;
 int gpio_set_value (int ,int ) ;
 int mdelay (int) ;
 int tosa_tg_send (int ,int ,int) ;

__attribute__((used)) static void tosa_lcd_tg_init(struct tosa_lcd_data *data)
{

 gpio_set_value(TOSA_GPIO_TG_ON, 0);

 mdelay(60);


 tosa_tg_send(data->spi, TG_TPOSCTL, 0x00);

 tosa_tg_send(data->spi, TG_GPOSR, 0x02);
}
