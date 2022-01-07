
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_gpio_platform_data {int pin; } ;


 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static u8 w1_gpio_read_bit(void *data)
{
 struct w1_gpio_platform_data *pdata = data;

 return gpio_get_value(pdata->pin) ? 1 : 0;
}
