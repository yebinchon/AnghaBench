
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int led_green ;
 int simple_strtol (char const*,char**,int) ;
 int toneport_update_led (struct device*) ;

__attribute__((used)) static ssize_t toneport_set_led_green(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 char *c;
 led_green = simple_strtol(buf, &c, 10);
 toneport_update_led(dev);
 return count;
}
