
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lcd_device {int dummy; } ;


 int lcd_device_unregister (struct lcd_device*) ;
 struct lcd_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int jornada_lcd_remove(struct platform_device *pdev)
{
 struct lcd_device *lcd_device = platform_get_drvdata(pdev);

 lcd_device_unregister(lcd_device);

 return 0;
}
