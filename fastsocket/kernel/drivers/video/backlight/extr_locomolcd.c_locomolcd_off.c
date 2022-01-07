
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; scalar_t__ mapbase; } ;


 int LOCOMO_GPIO_LCD_MOD ;
 int LOCOMO_GPIO_LCD_VEE_ON ;
 int LOCOMO_GPIO_LCD_VSHA_ON ;
 int LOCOMO_GPIO_LCD_VSHD_ON ;
 scalar_t__ LOCOMO_TC ;
 int locomo_gpio_write (int ,int ,int ) ;
 int locomo_writel (int,scalar_t__) ;
 TYPE_2__* locomolcd_dev ;
 int mdelay (int) ;

__attribute__((used)) static void locomolcd_off(int comadj)
{

 locomo_writel(0x06, locomolcd_dev->mapbase + LOCOMO_TC);
 mdelay(1);

 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHA_ON, 0);
 mdelay(110);

 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VEE_ON, 0);
 mdelay(700);


 locomo_writel(0, locomolcd_dev->mapbase + LOCOMO_TC);
 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_MOD, 0);
 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHD_ON, 0);
}
