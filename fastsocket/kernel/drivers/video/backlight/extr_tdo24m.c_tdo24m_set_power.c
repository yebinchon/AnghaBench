
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdo24m {int dummy; } ;
struct lcd_device {int dummy; } ;


 struct tdo24m* lcd_get_data (struct lcd_device*) ;
 int tdo24m_power (struct tdo24m*,int) ;

__attribute__((used)) static int tdo24m_set_power(struct lcd_device *ld, int power)
{
 struct tdo24m *lcd = lcd_get_data(ld);
 return tdo24m_power(lcd, power);
}
