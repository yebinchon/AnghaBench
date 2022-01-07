
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_gpio_platform_data {int pin; } ;


 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void w1_gpio_write_bit_val(void *data, u8 bit)
{
 struct w1_gpio_platform_data *pdata = data;

 gpio_set_value(pdata->pin, bit);
}
