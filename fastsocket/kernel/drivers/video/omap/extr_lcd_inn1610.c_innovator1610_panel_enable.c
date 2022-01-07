
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int gpio_set_value (int,int) ;

__attribute__((used)) static int innovator1610_panel_enable(struct lcd_panel *panel)
{

 gpio_set_value(14, 1);
 gpio_set_value(15, 1);
 return 0;
}
