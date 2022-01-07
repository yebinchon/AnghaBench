
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_set_value (unsigned long,int) ;
 int mdelay (int) ;

__attribute__((used)) static void lms283gf05_reset(unsigned long gpio, bool inverted)
{
 gpio_set_value(gpio, !inverted);
 mdelay(100);
 gpio_set_value(gpio, inverted);
 mdelay(20);
 gpio_set_value(gpio, !inverted);
 mdelay(20);
}
