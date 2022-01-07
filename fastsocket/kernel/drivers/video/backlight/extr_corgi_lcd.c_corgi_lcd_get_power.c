
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct corgi_lcd {int power; } ;


 struct corgi_lcd* dev_get_drvdata (int *) ;

__attribute__((used)) static int corgi_lcd_get_power(struct lcd_device *ld)
{
 struct corgi_lcd *lcd = dev_get_drvdata(&ld->dev);

 return lcd->power;
}
