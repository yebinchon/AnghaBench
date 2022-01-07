
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgi_lcd {int intensity; } ;
struct backlight_device {int dev; } ;


 struct corgi_lcd* dev_get_drvdata (int *) ;

__attribute__((used)) static int corgi_bl_get_intensity(struct backlight_device *bd)
{
 struct corgi_lcd *lcd = dev_get_drvdata(&bd->dev);

 return lcd->intensity;
}
