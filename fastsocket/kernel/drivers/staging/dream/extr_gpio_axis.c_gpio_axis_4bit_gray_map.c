
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct gpio_event_axis_info {int dummy; } ;


 size_t* gpio_axis_4bit_gray_map_table ;

uint16_t gpio_axis_4bit_gray_map(struct gpio_event_axis_info *info, uint16_t in)
{
 return gpio_axis_4bit_gray_map_table[in];
}
