
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct w1_gpio_platform_data {int pin; } ;


 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;

__attribute__((used)) static void w1_gpio_write_bit_dir(void *data, u8 bit)
{
 struct w1_gpio_platform_data *pdata = data;

 if (bit)
  gpio_direction_input(pdata->pin);
 else
  gpio_direction_output(pdata->pin, 0);
}
