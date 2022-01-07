
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltv350qv {int power; } ;
struct lcd_device {int dummy; } ;


 struct ltv350qv* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int ltv350qv_get_power(struct lcd_device *ld)
{
 struct ltv350qv *lcd = lcd_get_data(ld);

 return lcd->power;
}
