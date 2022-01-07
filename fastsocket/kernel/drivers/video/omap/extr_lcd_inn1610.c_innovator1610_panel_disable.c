
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int gpio_set_value (int,int ) ;

__attribute__((used)) static void innovator1610_panel_disable(struct lcd_panel *panel)
{

 gpio_set_value(14, 0);
 gpio_set_value(15, 0);
}
